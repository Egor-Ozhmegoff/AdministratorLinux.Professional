#!/bin/bash
EMAIL_ADDRESS=$1
PROCESS_COUNT=$(pidof -x "mail_script.sh" | awk '{ print NF }')

# Проверяем запущен такой скрипт или нет, если запущен то оастанавливаем скрипт
if  (( "$PROCESS_COUNT" > 2 ))
then
    echo "Process already running"
    exit 1
fi

# Функция которая формирует лог
function get_log {
    echo "Log from $(date -d "-1 hour") to $(date)" > mail_script.log
    awk '{ print $1 }' /var/log/nginx/access.log | uniq -c | awk '{ print "IP " $2 " REQUESTS " $1}' >> mail_script.log
    grep "http" /var/log/nginx/access.log | awk '{ print $ 11 }' | uniq -c | awk '{ print "URL " $2 " REQUESTS " $1}' >> mail_script.log
    cat /var/log/nginx/error.log >> mail_script.log
    awk '{ print $9 }' /var/log/nginx/access.log | uniq -c | awk '{ print "HTTP CODE " $2 " COUNT " $1}' >> mail_script.log
    truncate -s 0 /var/log/nginx/access.log
    truncate -s 0 /var/log/nginx/error.log
}

# Функция отправки почты
function send_mail {
    cat mail_script.log | mail -s "log" $EMAIL_ADDRESS
}

get_log
send_mail