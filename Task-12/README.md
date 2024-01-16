## Задание 12: Практика с SELinux

Запускаем плейбуку selinux.yaml чтобы преднастроить ВМ. Она выполнит следующее:
- Установит репозиторий epel-releaase
- Уствновит Nginx и пакеты для selinux
- Настроит nginx
- Настроит selinux
- Перезагрузт систему

Далее запускаем плейбуку которая:
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
