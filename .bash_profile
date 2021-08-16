# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
      	exec startx -- vt01 -keeptty &> /dev/null
fi
exit