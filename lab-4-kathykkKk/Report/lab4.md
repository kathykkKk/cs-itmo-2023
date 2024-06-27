# Отчет по лабораторной работе №4.
Лабораторная работа направлена на работу с виртуальными машинами, а также компьютерными сетями.

# Задание

## Создадим Docker image

Установим на наши виртуальные машины docker и создадим сам Dockerfile с помощью команды:

```
touch Dockerfile
```
Откроем этот образ:
```
nano Dockerfile
```

## Работа с образом

Сначала укажем, на основе какого образа будет работать наш Dockerfile. Затем укажем обновление пакетного менеджера и установим необходимые программы. Команды указаны на рисунке ниже.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic1.png)

В конце закрываем файл.

## Запуск aafire, работа с терминалом и соединением

После выполнения всех необходимых изменений в Dockerfile, сохраняем его. Переходим в терминал и в папке с Dockerfile запускаем команду для сборки образа с тегом "aafire". После этого запускаем Docker и подключимся к нему (в контейнере запускаем "aafire").

Выполняем следующую последовательность команд:
```
docker build -t aafire .
docker run -it aafire
aafire
```
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic2.png)

Видим следующее:

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic3.png)

Для двух контейнеров.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic4.png)

Два контейнера с aafire оставляем в работающем состоянии.

Откроем ещё одно окно терминала и создадим сеть при помощи команды
```
docker network create Mynetwork
```
Чтобы посмотреть названия контейнеров, выведем спискок действующих контейнеров с помощью команды:
```
sudo docker ps
```
После этого подключим контейнеры к сети с помощью комманд:
```
sudo docker network connect myNetwork wizardly_saha
sudo docker network connect myNetwork jovial_elbakyan
```
Теперь посмотрим на настройки созданной сети при помощи команды:
```
docker network inspect myNetwork
```
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic5.png)
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic6.png)

Проверим соединение, используя команду ping, после того, как контейнеры были соединены (IP-адреса получили из последжней выполненной команды). Как видим, пинг успешен.

![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-4-kathykkKk/Report/lab4/pic7.png)

# Вывод

В данной лабораторной работе была изучена работа с контейнерами и настройка соединения. Все задачи были выполнены успешно.
