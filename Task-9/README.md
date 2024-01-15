### Задание 9: Пишем скрипт
Добавим скрипт в cron 
```
0 * * * * sudo /home/eozhmegov/AdministratorLinux.Professional/Task-9/mail_script.sh
```
Разрешим выподнять скрипт
```
cmod +x /home/eozhmegov/AdministratorLinux.Professional/Task-9/mail_script.sh
```

Скрипт запустился и сформировал файл логов:
<img width="618" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/bc5956c7-60a0-492c-8382-ad71da1ad956">
