# As bash04, but only builtins
i=0
while ((i < 2)) && IFS= read -d '' line; do
    ((i++))
done < /proc/$$/cmdline
f=$line
IFS=''
while read line; do
    echo "$line"
done < $f
