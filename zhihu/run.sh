#!/bin/bash
cd `dirname $0`
PATH=$PATH:/usr/local/bin
# 休眠随机时间0-99s
sleep $[$RANDOM%100]
echo "mu"
python3 zhihu.py >> data.txt
echo "date,voteup,follower" > data.csv
tac data.txt >> data.csv