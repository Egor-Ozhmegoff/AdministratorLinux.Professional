#!/bin/bash
EMAIL_ADDRESS=$1

function get_log {
    echo '' > /tmp/mail_script
    awk '{ print $1 }' /var/log/nginx/access.log | uniq -c | awk '{ print "IP " $2 " REQUESTS " $1}' >> /tmp/mail_script
    grep "http" /var/log/nginx/access.log | awk '{ print $ 11 }' | uniq -c | awk '{ print "URL " $2 " REQUESTS " $1}' >> /tmp/mail_script
    awk '{ print $9 }' /var/log/nginx/access.log | uniq -c | awk '{ print "HTTP CODE " $2 " COUNT " $1}'>> /tmp/mail_script
    echo '' > /var/log/nginx/access.log
}

function send_mail {
    cat /tmp/mail_script | mail -s "log" $EMAIL_ADDRESS
}

get_log
send_mail