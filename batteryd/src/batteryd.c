#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>

static char	check_threshold(char *line, char isUnderThreshold)
{
  const int	threshold = 20;
  const int	val = atoi(line);

  if (val >= threshold)
    return 0; // Tell daemon we're above threshold
  if (isUnderThreshold)
    return 1; // We already know we're under threshold, ignore result
  // Notify user then return 1 to avoid re-sending notification
  system("notify-send -u critical \"Low Battery\" \"Plug it in now or suffer consequences :c\"");
  return 1;
}

void	batteryd()
{
  const char* CAPACITY = "POWER_SUPPLY_CAPACITY=";
  const size_t CAPACITY_LEN = strlen(CAPACITY);

  const char* STATUS = "POWER_SUPPLY_STATUS=";
  const size_t STATUS_LEN = strlen(STATUS);

  const char* DISCHARG = "Discharging";
  const size_t DISCHARG_LEN = strlen(DISCHARG);

  char	isUnderThreshold = 0;
  char	discharging = 0;
  while (42)
    {
      FILE *fd = fopen("/sys/class/power_supply/BAT0/uevent", "r");
      if (fd)
	{
	  char *line = 0;
	  size_t len = 0;
	  while (getline(&line, &len, fd) >= 0)
	    {
	      if (!strncmp(line, STATUS, STATUS_LEN)) // Status line
		{
		  discharging = !strncmp(line + STATUS_LEN, DISCHARG, DISCHARG_LEN);
		  if (!discharging)
		    break ; // The computer isn't discharging, we don't have to keep reading lines
		}
	      else if (discharging && !strncmp(line, CAPACITY, CAPACITY_LEN)) // Capacity line
		{
		  isUnderThreshold = check_threshold(line + CAPACITY_LEN, isUnderThreshold);
		  free(line);
		  break ;
		}
	      free(line);
	      len = 0;
	    }
	  fclose(fd);
	}
      sleep(15);
    }
}
