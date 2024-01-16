## Задание 12: Практика с SELinux

Запускаем плейбуку selinux.yaml чтобы преднастроить ВМ. Она выполнит следующее:
- Установит репозиторий epel-releaase
- Уствновит Nginx и пакеты для selinux
- Настроит nginx
- Настроит selinux
- Перезагрузт систему

Далее запускаем Check_selinux.yaml плейбуку которая:
- Выключит firewalld
- Проверит статус firewalld
- Проверит статус Selinux
- Проверит лог selinux

  <img width="1500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/492fdc8e-56c2-4d53-a38f-2361815d3e2b">
<img width="1500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/a53c60eb-0e36-4833-8c1f-bbb1499490cb">

Видим что для того чтобы разблокировать nginx нужно выполнить команду
```
setsebool -P nis_enabled 1
```
Запустим плейбуку Unlock_nginx_1.yaml она:
- Разблокирует nginx
- Проверит состяние сервиса
- Заблокирует nginx

<img width="937" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/6d809d62-2911-43c0-b190-5a7ebac971de">

Запускаем плейбук Unlock_nginx2 которая:
- Проверит какие порты разрешены
- Разблокирует порты
- Проверит что новый порт добавлен
- Перезапустит nginx
- Проверит состояние nginx
- Удалит порт
- Проверит что порт удалился

<img width="1512" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/b6bb5192-cdd6-408b-9abd-91b179dc6178">

<img width="1512" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/7f0e7eb7-e15e-4c6c-a46a-3487f0637743">

<img width="1512" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/366b71e2-0c76-471f-91ae-2d8448fc1cc6">


