### Задание 5: NFS
#### 1) Настройка NFS сервера

Запускаем плейбуку create_NFS_server которая :
- Установит пакет nfs-kernel-server
- Включит фаервол
- Откроет порты для nfs клиента
- Настроит права на сетевую папку
- Настроит nfs сервер
- Проверит что сервер работает

Запускаем плейбуку и видим что она отработала нормально и сервер поднялся
<img width="1440" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/ccb0b298-efce-4d74-abdc-02aea5444df6">

#### 2) Настройка NFS клиена

Запускаем плейбуку set_up_nfs_client которая:
- Установит пакет nfs-common
- Включит фаервол
- Настроит автомонтирование сетевой папки
- Проверит монтирование

Запускаем плейбуку и видим что сетевая папка подключена и работает
<img width="1440" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/a12a5371-751d-450b-8daa-b09414789814">

#### 3) Проверяем работоспособность

##### Проверяем сервер
- заходим на сервер 
- заходим в каталог `/srv/share/upload` 
- создаём тестовый файл `touch check_file` 
<img width="500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/1c1d49d1-ac9c-44ce-a2a7-baf605892f56">

##### Проверяем клиент
- заходим на клиент 
- заходим в каталог `/mnt/upload` 
- проверяем наличие ранее созданного файла 
- создаём тестовый файл `touch client_file` 
- проверяем, что файл успешно создан
- перезагружаем клиент 
- заходим на клиент 
- заходим в каталог `/mnt/upload` 
- проверяем наличие ранее созданных файлов 
<img width="500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/eb5d3976-e43d-4464-b5ab-9f1a110f8f1a">
<img width="500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/76cff4ac-2339-450a-8aa8-67838601c427">
<img width="514" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/d1bb7fc0-5c56-40ae-8cf5-adbd8721b7e4">

##### Проверяем сервер: 
- перезагружаем сервер 
- заходим на сервер 
- проверяем наличие файлов в каталоге `/srv/share/upload/`
- проверяем статус сервера NFS `systemctl status nfs-server`
- проверяем статус firewall `systemctl status ufw`
- проверяем экспорты `exportfs -s` 
- проверяем работу RPC `showmount -a 10.64.244.6`

<img width="500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/79c7ed79-b2ee-4ae9-a369-eabc9d6c2533">
<img width="500" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/2607231c-5d4a-41b1-b403-0442269df6dd">
<img width="1440" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/54477156-dcb8-42d0-93ba-655cd0b12f07">

##### Проверяем клиент: 
- возвращаемся на клиент 
- перезагружаем клиент 
- заходим на клиент 
- проверяем работу RPC `showmount -a 10.64.244.5`
- заходим в каталог `/mnt/upload` 
- проверяем статус монтирования `mount | grep mnt` 
- проверяем наличие ранее созданных файлов 
- создаём тестовый файл `touch final_check` 
- проверяем, что файл успешно создан 

<img width="396" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/7efdfeda-d80f-4a53-8d7f-03b0d0c6b47d">
<img width="1438" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/8cfd3641-28c2-4009-927a-6a48264de218">




