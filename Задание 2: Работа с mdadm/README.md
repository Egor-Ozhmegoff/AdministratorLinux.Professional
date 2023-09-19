### Задание 2: Работа с mdadm

#### 1) Cобрать RAID 1
Запускаем плейбук create_raid которая выполнит следующие задачи:
- Занулит блоки на дисках sdb и sdc
- Создаст рейд из дисков sdb и sdc
- Проверит статус рейда 
- Создаст файловую систему на рейде
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 05 18" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/d468989e-f944-40f3-9dfb-9ffbbeed796a">
В таске Show output мы видим что рейд успешно собрался
<img width="1440" alt="Снимок экрана 2023-09-19 в 10 05 08" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/a07bcd75-576e-4544-bdda-8a847fab4018">

#### 2) Сломать / Починить RAID