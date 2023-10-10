### Задание 6: Размещаем свой RPM в своем репозитории 

- Загружаем пакет nginx `wget https://nginx.org/packages/centos/8/SRPMS/nginx-1.20.2-1.el8.ngx.src.rpm`
- Создаем дерево каталогов `rpm -i nginx-1.*`
- Загружаем openssl `wget https://github.com/openssl/openssl/archive/refs/heads/OpenSSL_1_1_1-stable.tar.gz`
- Распаковываем `tar -xvf OpenSSL_1_1_1-stable.tar.gz`
- Установим зависимости `yum-builddep rpmbuild/SPECS/nginx.spec`
- Добавляем строчку `--with-openssl=/root/openssl-OpenSSL_1_1_1-stable` в nginx.spec
- Выполняем сборку пакета `rpmbuild -bb rpmbuild/SPECS/nginx.spec`
<img width="800" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/99a8526d-d716-438f-ab68-e3693a12cd4a">
- Проверяем что пакет собрался
<img width="718" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/96ce3dc7-57b1-4d90-adff-ac2f79fb7b8d">
- Устанавливаем пакет `yum localinstall -y rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm'
- Проверяем работоспособность `systemctl start nginx && systemctl status nginx`
<img width="1085" alt="image" src="https://github.com/Egor-Ozhmegoff/AdministratorLinux.Professional/assets/71369321/4f15966f-356c-4bf4-8cc3-28d2288e2fd3">
