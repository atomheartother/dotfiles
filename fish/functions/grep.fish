# Defined via `source`
function grep --wraps=rg --description 'alias grep rg'
  rg $argv; 
end
