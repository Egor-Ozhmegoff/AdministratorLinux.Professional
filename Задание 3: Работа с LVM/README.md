### Задание 3: Работа с LVM

#### 1) Уменьшить том до 8G
Запускаем плейбук create_lvm который выполнит следующие задачи:
- Создаст резервный lvm lv_root
- Cоздаст файловую систему на нем
- Скопирует данные рабочей системы на резервный lvm lv_root
- Настроит загрузку с резервного lvm lv_root
- Перезагрузит систему

<img width="644" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/40fc90b6-6054-46a4-a181-62abcb92adce">

Далее запускаем плейбук decrease_lvm_size в котором будут следующие задачи:
- Проверить что система загрузилась с нужного lvm
- Удалить старый lvm ubuntu-lv
- Создать новый lvm размером 8G ubuntu-lv
- Создать на новом lvm ubuntu-lv файловую систему 
- Перенести на ubuntu-lv данные с резервного lvm lv_root
- Настроить загрузку системы на lvm ubuntu-lv

<img width="688" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/44b4d412-dc3e-494f-b9b2-b27a26d4c5b7">

<img width="576" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/6bd139c4-1aef-4640-8fcc-9a0748ca8985">

### 2) Выделить том /var под зеркало

Запускаем плейбук move_var он выполнит:
- Создание зеркала размером 950м
- Смонтирует зеркало в систему
- Скопирует папку var на зеркало
- Подмонтирует зеркало как каталог /var
- Настроит автоматическое монтирование при загрузке системы
- Перезагрузит систему

<img width="574" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/0007e7a5-b965-4765-837b-ba51832092b3">

### 3) Выделить том под /home и сделать снепшот

Запускаем плейбук create_home_for_snapshots который:
- Удалит старые lvm
- Проверит что система азгрузилась с нужного lvm и том /var подмонтировался
- Создаст lvm для home
- Создаст файловую систему на lvm
- Перенесет данные на новый lvm
- Настроит автомонтирование
- Создаст файлы в home
- Сделает снепшот
- Удалит данные
- Восстановит данные из снепшота
- Проверит что данные восстановились

<img width="574" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/b7dbf7f9-bc00-40f9-9968-8b1bd9a52586">

<img width="600" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/3d1cdb08-b190-411c-a194-aea77982747a">

