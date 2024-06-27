# Отчет по лабораторной работе №5.
Лабораторная работа направлена на углубленное ознакомление с Git.

## Введение

1. Создание репозитория на GitHub:

    Создаем новый репозиторий с именем git-practice и копируем его URL.

2. Клонирование репозитория:

    Открываем терминал, переходим в папку, в которой будет храниться локальная копия репозитория, и вводим команды, используя скопированный [URL](https://github.com/kathykkKk/git-practice.git):
   
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic1.png)

4. Добавление файла:

    Создадим новый текстовый файл example.txt, и добавим в него текст
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic2.png)

Вернемся в терминал и введем:
    
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic3.png)

6. Создание ветки:

    Создадим новую ветку "feature-branch" и переключимся на нее:
   
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic4.png)

8. Отредактируйте файл example.txt, добавив еще текст.

    Повторим шаги, указанные в п. 3. Имя коммита должно отличаться!
   
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic5.png)

10. Слияние изменений:

    Переключимся обратно в основную ветку и сольем изменения из ветки "feature-branch" в основную ветку:
    
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic6.png)

12. Завершение:

    Видим, что изменения успешно слиты и отображаются в основной ветке на GitHub. Завершаем работу с репозиторием.
    
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic7.png)
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic8.png)

## Работа с ветками

1. Создадим новый текстовый файл с базовой структурой книги
   ![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic9.png)

3. Создайте ветку "feature-login" для разработки новой функциональности:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic10.png)

3. Внесите изменения в файл:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic11.png)

5. Завершите изменения, закоммитьте их и отправьте ветку на GitHub:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic12.png)

## Работа с удаленным репозиторием

1. Переключитесь на основную ветку (main) и внесите изменения:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic13.png)

2. Внесите изменения в основной ветке (например, добавьте описание книги):
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic14.png)

3. Закоммитьте изменения и отправьте их на GitHub:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic15.png)

## Моделирование конфликта

1. Вернитесь в ветку "feature-login" и внесите изменения в том же участке:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic16.png)

2. Измените главу 2 в файле
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic17.png)

3. Закоммитьте изменения и отправьте их на GitHub:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic18.png)

## Разрешение конфликта

1. Вернитесь в основную ветку и попробуйте слить изменения:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic19.png)

2. Возникнет конфликт. Разрешите его в файле
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic20.png)

3. Разрешите конфликт, удалив метки и оставив нужные изменения:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic21.png)

4. Закоммитьте разрешение конфликта и отправьте изменения на GitHub:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic22.png)

## Автоматизация проверки формата файлов при коммите

Хорошо, предположим, у вас есть задача автоматизировать проверку формата файлов при коммите с использованием Git Hooks. Давайте создадим простую задачу и решение для этого случая.

1. Задача

Перед каждым коммитом необходимо автоматически проверять, чтобы все .txt файлы в репозитории соответствовали определенному формату.

2. Решение

  * Создайте bash-скрипт (например, check_format.sh), который будет выполнять проверку формата .txt файлов. Этот скрипт может использовать инструменты, такие как grep или другие, чтобы проверить соответствие формату.
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic23.png)

  * Добавление скрипта в репозиторий.
    Поместите скрипт в папку, например, в .git/hooks и назовите его pre-commit. Убедитесь, что у него есть права на выполнение.

   ![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic24.png)

  * Попробуйте внести изменения и закоммитить.

    Теперь, при каждой попытке закоммитить изменения, Git будет автоматически выполнять проверку формата файлов перед коммитом. 
    ![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic25.png)

    Если вам необходимо внести изменения в файлы, чтобы они соответствовали формату, внесите изменения, добавьте файлы и снова попробуйте закоммитить. 

3. Примечание:

В данном примере использован условный синтаксис, предполагая, что у вас есть спецификация формата файла, которую можно проверить с использованием инструментов командной строки. Реальная проверка будет зависеть от конкретных требований вашего проекта.

## Использование Git Flow в проекте

Задача: интегрировать Git Flow в проект для управления циклом разработки, создания релизов и управления hotfixes. 
Предположим, у вас есть задача на создание новой функциональности для вашего проекта с использованием Git Flow. Давайте рассмотрим конкретный пример.

1. Убедитесь, что Git Flow установлен на локальной машине:

```
sudo apt-get install git-flow
```

2. В корне репозитория выполните инициализацию Git Flow.

```
git flow init
```

3. Создайте ветку для новой функциональности "task-management":
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic26.png)

5. Внесите изменения в код для добавления функционала управления задачами (например, в файл task_manager.py):
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic27.png)

Выполните коммит изменения по мере разработки:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic28.png)

5. После завершения разработки функции завершите фичу и объедините ее с основной веткой:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic29.png)

Git Flow автоматически переключится на ветку develop и выполнит слияние.

6. Переключитесь на ветку "develop" и начните создание релиза:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic30.png)

7. Внесите изменения, связанные с релизом (например, обновите версию в файле version.txt):
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic31.png)

8. Завершите релиз и объедините его с ветками "develop" и "main":
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic32.png)
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic33.png)

10. Если в процессе использования выявлена критическая ошибка, создайте hotfix:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic34.png)

10. Внесите изменения для исправления ошибки и коммитите:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic35.png)

11. Завершите hotfix и объедините его с ветками "develop" и "main":
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic36.png)
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic37.png)

13. Завершение работы и отправка изменений на удаленный репозиторий. Отправьте изменения на удаленный репозиторий:
![image](https://github.com/kathykkKk/cs-itmo-2023/blob/main/lab-5-kathykkKk/Report/lab5/pic38.png)

## Вывод
В ходе лабораторной работы была проведена работа с репозиорием на GitHub через командную строку терминала. Все задачи были выполнены успешно.
