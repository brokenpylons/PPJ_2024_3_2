#!/bin/bash
pwd

declare -r path=$(dirname $(realpath "$0"))

declare -i err=0

for file in "$path"/positive/example{0..50}.txt
do
    echo "$file"
    cat "$file"
    declare output=$(./run.sh "$file" >(cat -) >/dev/null)

    if [[ "$output" == "accept" ]]
    then
        echo -e "[OK]\n"
    else
        echo -e "[FAIL]\n"
        ((err++))
    fi
done

for file in "$path"/negative/example{0..17}.txt
do
    echo "$file"
    cat "$file"
    declare output=$(./run.sh "$file" >(cat -) >/dev/null)

    if [[ "$output" == "reject" ]]
    then
        echo -e "[OK]\n"
    else
        echo -e "[FAIL]\n"
        ((err++))
    fi
done

exit $err
