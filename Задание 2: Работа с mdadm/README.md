### Задание 2: Работа с mdadm

#### 1) Cобрать RAID 1
Запускаем плейбук create_raid которая выполнит следующие задачи:
- Занулит блоки на дисках sdb и sdc
- Создаст рейд из дисков sdb и sdc
- Проверит статус рейда
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 05 18" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/d468989e-f944-40f3-9dfb-9ffbbeed796a">
В таске Show output мы видим что рейд успешно собрался
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 05 08" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/a07bcd75-576e-4544-bdda-8a847fab4018">

#### 2) Сломать / Починить RAID
Запускаем плейбук break_fix_raid которая выполнит следующие задачи:
- Выведет диск sdb из строя
- Проверит статус рейда
- Удалит диск sdb
- Добавит новый диск в рейд
- Проверит статус рейда
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 42 18" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/63dcfca2-5ad9-4c4d-ba41-bb0b32ae7a44">
Проверяем что рейд сломался(диск ушел в статус faulty)
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 43 11" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/cdc43bf3-8e91-4e6a-84fc-517828726599">
Удаляем сломаный диск и добавляем новый
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 43 29" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/7d4ccb20-8e96-4d17-86dd-54262fa388ae">
Проверяем что рейд собрался
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 42 54" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/69c12fb2-463d-4b87-8e22-9f33c8bbccb4">

### Создать файловую систему GPT на 5 разделов и смонтировать их на диск
Запускаем плейбук create_gpt.yaml который выполнит следующие задачи:
- Создаст разделы
- Создаст файловую систему для разделов
- Содаст каталоги для разделов
- Смонтирует разделы
- Выведет результат
<img width="1438" alt="Снимок экрана 2023-09-19 в 12 08 45" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/400fd0c8-c12f-4696-8de6-1f90f86807db">
В таске Show partitions мы видим что разделы созданы
<img width="1440" alt="Снимок экрана 2023-09-19 в 12 08 56" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/40c92808-1310-4608-8748-f63f2447b901">
В таске Show mount мы видим что разделы смонтированы
<img width="1440" alt="Снимок экрана 2023-09-19 в 12 09 06" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/e9cc2826-aff3-458e-8727-abb9d34add35">
