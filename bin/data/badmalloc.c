/*
** badmalloc.c for  in /home/navenn_t/.bin/data
** 
** Made by Navennec Thomas
** Login   <navenn_t@epitech.net>
** 
** Started on  Fri Nov  6 17:52:49 2015 Navennec Thomas
** Last update Mon Nov  9 19:33:52 2015 Navennec Thomas
*/

#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <limits.h>
#include <time.h>

void		*malloc(size_t size)
{
  unsigned	res;

  res = (unsigned)(time(NULL)) * getpid();
  srand(res * rand());
  return (rand() % 5 ? calloc(1, size) : NULL);
}
