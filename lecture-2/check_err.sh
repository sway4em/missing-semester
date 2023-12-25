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