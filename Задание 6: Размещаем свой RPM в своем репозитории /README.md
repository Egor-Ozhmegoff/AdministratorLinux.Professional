### Задание 6: Размещаем свой RPM в своем репозитории 

#### 1) Создать свой RPM пакет
- Загружаем пакет nginx `wget https://nginx.org/packages/centos/8/SRPMS/nginx-1.20.2-1.el8.ngx.src.rpm`
- Создаем дерево каталогов `rpm -i nginx-1.*`
- Загружаем openssl `wget https://github.com/openssl/openssl/archive/refs/heads/OpenSSL_1_1_1-stable.tar.gz`
- Распаковываем `tar -xvf OpenSSL_1_1_1-stable.tar.gz`
- Установим зависимости `yum-builddep rpmbuild/SPECS/nginx.spec`
- Добавляем строчку `--with-openssl=/root/openssl-OpenSSL_1_1_1-stable` в nginx.spec
- Выполняем сборку пакета `rpmbuild -bb rpmbuild/SPECS/nginx.spec`
<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/99a8526d-d716-438f-ab68-e3693a12cd4a">

- Проверяем что пакет собрался

<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/96ce3dc7-57b1-4d90-adff-ac2f79fb7b8d">

- Устанавливаем пакет `yum localinstall -y rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm'
- Проверяем работоспособность `systemctl start nginx && systemctl status nginx`

<img width="1085" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/4f15966f-356c-4bf4-8cc3-28d2288e2fd3">

#### 2) Создать свой репозиторий и разместить там ранее собранный RPM

- Создаем папку `mkdir /usr/share/nginx/html/repo`
- Копируем туда пакет `cp rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm  /usr/share/nginx/html/repo/`
- Копируем в наш репозиторий [Percona-server](https://downloads.percona.com/downloads/percona-distribution-mysql-ps/percona-distribution-mysql-ps-8.0.28/binary/redhat/8/x86_64/percona-orchestrator-3.2.6-2.el8.x86_64.rpm -O /usr/share/nginx/html/repo/percona-orchestrator-3.2.6-2.el8.x86_64.rpm)
- Создаем репозиторий `createrepo /usr/share/nginx/html/repo/`

<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/c9c7b360-38d0-4ead-becc-e53920a65f3e">

- Добавляем в конфигурацию nginx `autoindex on;`
- Перезапускаем сервис `nginx -s reload`
- Проверяем репозиторий `curl -a http://localhost/repo/`

<img width="1187" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/b4896fc7-14c2-4db7-a14c-7b200d775347">

- Добавим наш репозиторий в yum 
```
cat >> /etc/yum.repos.d/otus.repo << EOF
[otus]
name=otus-linux
baseurl=http://localhost/repo
gpgcheck=0
enabled=1
EOF
```



