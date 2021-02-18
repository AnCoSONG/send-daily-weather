#!/bin/sh

CITY=成都
LANGUAGE="zh-CN"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36"
if test -z "$1"
then
    echo "使用默认CITY:$CITY"
else
    CITY=$1
    echo $CITY
fi

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o "result-$CITY.html" \
  wttr.in/$CITY?format=4\&m

# 想要去掉format可能需要用js编辑返回的html文件，源文件引入了一个非常沙雕的外部css完全可以手动写入