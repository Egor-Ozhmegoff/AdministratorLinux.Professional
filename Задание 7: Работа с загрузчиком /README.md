### Задание 7: Работа с загрузчиком

#### 1) Попасть в систему без пароля несколькими способами
##### Способ 1. init=/bin/sh
- Добавлāем init=/bin/sh в загрузчик и нажимаем сtrl-x для загрузки в систему

<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/24ec3f09-8a3e-4a8b-a25e-06c0ec9b9838">

- Монтируем корневую систему в режиме rw

<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/d2ea2741-42bf-40b6-b245-aa5e087c7551">

##### Способ 2. rd.break
- Добавлāем rd.break в загрузчик и нажимаем сtrl-x для загрузки в систему

<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/1c7af1a6-ff04-4260-8088-56d421c0b423">

- Меняем пароль пользователя root

<img width="660" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/44d904f1-79ac-48b3-a62e-0b368109b28b">

##### Способ 3. rw init=/sysroot/bin/sh
- Добавляем rw init=/sysroot/bin/sh в загрузчик и нажимаем сtrl-x для загрузки в систему

<img width="725" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/3b0eb1b5-89ac-44c8-9d2b-dc04a3d1ccbd">

#### 2) Установить систему с LVM, после чего переименовать VG
- Проверим состояние системы

<img width="400" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/ef130038-c735-4be0-87ad-07c42a3c6131">

- Правим /etc/fstab, /etc/default/grub, /boot/grub2/grub.cfg.
- Пересоздаем init image `mkinitrd -f -v /boot/initramfs-$(uname -r).img $(uname -r)`
- Перезагружаемся
- Проверяем состояние системы

<img width="400" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/078fe0f1-17e9-473b-8878-232c4d2da9bf">

