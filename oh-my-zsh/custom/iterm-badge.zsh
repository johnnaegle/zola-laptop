i2-badge ()
{
  printf "\e]1337;SetBadgeFormat=%s\a" $(echo -n "$1" | base64)
}

i2-badge localhost

