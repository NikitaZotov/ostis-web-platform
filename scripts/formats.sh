warning()
{
  ([ -n "$(tput setaf 1 2<&-)" ] && { tput setaf 3 && tput bold && echo "$1" && tput sgr0; }) || echo "$@"
}
