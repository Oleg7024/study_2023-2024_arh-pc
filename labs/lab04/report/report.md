---
## Front matter
title: "РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ"
subtitle: "Факультет физико-математических и естественных наук
Кафедра прикладной информатики и теории вероятностей"
author: "Архипов Олег Константинович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоить процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы

Создаю директорию для программ на ассеблере NASM и перемещаюсь в нее (рис. @fig:001).

![Создание и перемещение в директорию](image/Вставленное изображение.png){#fig:001 width=100%}

Создаю файл hello.asm при помощи команды touch и открываю его втекстовом редакторе при помощи gedit (рис. @fig:002).

![Создание и открытие файла hello.asm](image/Вставленное изображение 1.png){#fig:002 width=100%}

Ввожу приведенный текст в файл (рис. @fig:003).

![Текст файла hello.asm](image/Вставленное изображение 2.png){#fig:003 width=100%}

Перед трансляцией уточняю битность своей системы командой uname -m (рис. @fig:004).

![Битность системы](image/Вставленное изображение 3.1.png){#fig:004 width=100%}

Преобразую текст программы в объектный код и проверяю наличие соответстующего файла hello.o (рис. @fig:005).

![Трансляция](image/Вставленное изображение 3.png){#fig:005 width=100%}

Создаю файлы obj.o и list.lst и проверяю их наличие(рис. @fig:006).

![Создание obj.o и list.lst](image/Вставленное изображение 4.png){#fig:006 width=100%}

Передаю файл в обработку компановщику, но т.к. у меня 64-битная система, elf_i386 не подходит, использую elf_х86_64 и проверяю результат, должен получиться исполняемый файл hello , собранный из объектного файла hello.o (рис. @fig:007, рис. @fig:008).

![Компановка.1](image/Вставленное изображение 5.png){#fig:007 width=100%}

![Компановка.2](image/Вставленное изображение 6.png){#fig:008 width=100%}

Запускаю выполнение исполняемого файла (рис. @fig:009).

![Запуск исполняемого файла](image/Вставленное изображение 7.png){#fig:009 width=100%}

# Самостоятельная работа

Создаю в каталоге ~/work/arch-pc/lab04 копию файла hello.asm с именем lab4.asm , проверяю при помощи ls (рис. @fig:010).

![Создание копии файла hello.asm с новым именем lab4.asm](image/Вставленное изображение 8.png){#fig:010 width=100%}

Открываю в текстовом редакторе новый файл (рис. @fig:011).

![Скопированный текстовый файл](image/Вставленное изображение 9.png){#fig:011 width=100%}

Вношу необходимые изменения (ср рис.11 и рис.12).

![Измененный текстовый файл](image/Вставленное изображение 10.png){#fig:012 width=100%}

На рис.13-16 последовательно транслирую текст программы lab4.asm в объектный файл lab4.o , компаную объектный файл и запускаю полученный исполняемый файл.

![Трансляция lab4.asm](image/Вставленное изображение 11.png){#fig:013 width=100%}

![Обновление файлов obj.o и list.lst](image/Вставленное изображение 12.png){#fig:014 width=100%}

![Компановка из объектного файла lab4.o исполняемого файла](image/Вставленное изображение 13.png){#fig:015 width=100%}

![Запуск исполняемого файла](image/Вставленное изображение 14.png){#fig:016 width=100%}

Копирую файлы lab4.asm и hello.asm в локальный репозитарий в каталог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04 (рис. @fig:017).

![Перенос lab4.asm и hello.asm в локальный репозитарий](image/Вставленное изображение 15.png){#fig:017 width=100%}

Загружаю файлы на Github (рис. @fig:018).

![Перенос lab4.asm и hello.asm в локальный репозитарий](image/Вставленное изображение 16.png){#fig:018 width=100%}

Теперь скомпилирую отчет и также загружу его на Github.

# Выводы

Процедуры компиляции и сборки программ в ассемблере NASM освоены.

::: {#refs}
:::
