### Задание 11: Первые шаги с Ansible

Посмотрим какое ядро установлено на хосте:
<img width="692" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/063b9df6-4960-4557-821a-e6efb21b65cc">
Проверим статус сервиса firewalld:
<img width="722" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/570e8b20-43a0-4d3c-b5b5-ac570cfef7d8">
Запустим плейбуку которая:
- Установить NGINX
- Перезапустить сервис NGINX
- Настроит NGIX 
- Применит новый конфиг NGINX
- Проверит командой curl доступность сервиса
