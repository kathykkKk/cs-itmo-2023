# Отчет по лабораторной работе №3. Виртуализация.
Лабораторная работа направлена на ознакомление с настройкой виртуальных машин, в том числе с обеспечением их доступа в Интернет, а также установленияем или запретом доступа одной виртуальной машины к другой.

## Настройка виртуальной машины А с Ubuntu в VirtualBox, обеспечение доступа в сеть Интернет
После создания виртуальной машины необходимо её настроить. Перейдём в раздел "Настройки" --> "Сеть", выбераем адаптер и переключите "Включить сетевой адаптер" в нужное положение. Теперь машина будет работать с выбранными адаптерами.

В VirtualBox при создании каждая виртуальная машина автоматически получает доступ в интернет при помощи NAT. Чтобы включить или отключить интернет с помощью NAT в VirtualBox снова переходим в "Настройки" --> "Сеть" и выбираем тип подключения NAT. Аналогично можно обеспечить доступ в интернет для всех машин.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic1.png)

Проверим доступ в сеть интернет, пропинговав google.com с каждой из машин A, Б и В.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic2.png)

## Организация сетевого доступа между машинами A и Б / А и В

Чтобы создать сеть из виртуальных машин VirtualBox необходимо перейти в "Файл" --> "Инструменты" --> "Менеджер сетей" --> "Сети NAT".

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic3.png)

Затем нажать "Создать" и задаем имя сети.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic4.png)

После этого во всех устройствах, которые хотим включить в одну сеть, переходим в "Настройки" --> "Сеть", выбираем "Сеть NAT" и вводим имя созданной сети.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic5.png)

Для того чтобы между машинами A и Б / А и В был организован сетевой доступ, но при этом доступ из машины Б в машину В был запрещен, мы создаем две сети описанным выше способом. Для машины A указываем обе этих сети в различных адаптерах, для остальных машин - по одной. Вследствие этого машины Б и В не будут связаны.

## Проверка доступа между машинами

Сначала узнаем IP-адреса машин с помощью комманды

```
ip addr
```
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic6.png)

Машина А имеет 3 IP-адреса, так как для нее мы настроили 3 адаптера, машины Б и В - по 2 IP-адреса.
Попробуем последовательно пропинговать IP-адреса других машин с каждой машины.

Видим, что передача данных с машины A происходит на все IP-адреса, а для машин Б и В - только на IP-адрес машины А (на IP-адреса друг друга видим 100% потерянных пакетов).

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic7.png)

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic8.png)

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-3-kathykkKk/Report/lab3/pic9.png)

## Вывод

В данной лабораторной работе была изучена настройка виртуальных машин. Все задачи были выполнены успешно.

