### Задание 4: Практические навыки работы с ZFS
#### 1) Определение алгоритма с наилучшим сжатием

Запускаем плейбуку create_zfs которая выполнит:
- Установку zfs
- Создаст 4 зеркальных пула
- Выведет их статус
- Настроит сжатие данных
- Загрузит файл на все пулы
- Проверит что сжатие работает корректно

<img width="790" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/543bf2c3-ca56-4690-8161-11f4aeb5e750">
<img width="573" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/bfd092de-c0e0-4b0c-b240-b0dad9afb5e2">

Как мы видим из вывода задачи show compression gzip самый эффективный алгоритм сжатия

#### 2) Определение настроек пула

Запускаем плейбуку check_pool_setup которая выполнит:
- Загрузку архива
- Распаковку архива
- Проверит возможность импорта пула
- Импортирует пул
- Проверит статус пула
- Проверит настройки пула

<img width="643" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/caf6815b-4613-434a-be34-ef7014800f55">
<img width="609" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/5f1ec639-23d5-4923-a084-3a81d90f3171">
<img width="576" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/1d509aa3-4a35-4314-a87b-f675fc5a2c90">
<img width="499" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/85c3507d-46ee-4711-a1fa-3a290c3e4310">

 #### 3) Работа со снапшотом, поиск сообщения от преподавателя

Запускаем плейбуку zpool_snapshot которая выполнит:
- Загрузит пул
- Восстанови файловую систему
- Найдет секретное сообщение
- Отобразит секретное сообщение

<img width="664" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/3da2a74f-eae0-4abc-ab5a-6392d38150c2">
