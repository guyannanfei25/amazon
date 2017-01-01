#! /bin/bash

today=`date "+%Y-%m-%d"`
cat ~/amazon/book.list|while read line; do
    echo $line
    bookName=${line%%magic*}
    bookUrl=${line#*magic}
    # echo -e "${bookName}\t${bookUrl}"
    wget -np -nd --accept=* --no-check-certificate $bookUrl -O ~/amazon/data/${bookName}
    price=`grep  -A 1 "a-color-price a-size-medium a-align-bottom" ~/amazon/data/${bookName} |tail -n 1|sed 's/[[:space:]]//g'`
    /bin/echo -e "${bookName}\t${price}" >> ~/amazon/ret/${today}
    rm -fv ~/amazon/data/${bookName}
done
