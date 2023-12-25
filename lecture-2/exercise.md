```bash
# 1
ls -lathG 
# 2
marco() {
   export MARCO=$(pwd)
}

polo() {
   cd "$MARCO"
}
# 3
count=0
touch output.txt
touch error.txt
f(){
    sh func.sh >> output.txt 2>> error.txt
    if [ $? -ne 0 ]; then
        cat output.txt
        cat error.txt
        echo $count
    else
        count=$((count+1))
        f
    fi
}
# 4
find . -type f -name "*.html" -print0 | xargs -0 tar -cvzf archive.tar.gz

# 5
find . -type f | ls -t | head -n1
```