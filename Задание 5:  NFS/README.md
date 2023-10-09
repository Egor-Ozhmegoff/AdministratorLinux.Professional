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
