 
# On linux
cat $(cat /proc/$$/cmdline | sed -e 's/\x00/ /g;' | awk '{print $2}')
 
