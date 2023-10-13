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

Изучить VCS , алгоритм создания репозитория и научиться работать с системой git.

# Выполнение лабораторной работы

Создание предварительной конфигурации git (рис. @fig:001).

![Шаг 1](image/Вставленное изображение.png){#fig:001 width=100%}

Настраиваю utf-8 в выводе сообщений git, задаю имя начальной ветки и параметры autocrlf и safecrlf (рис. @fig:002).

![Шаг 2](image/Вставленное изображение 1.png){#fig:002 width=100%}

Генерирую приватный и открытый ключи (рис. @fig:003).

![Шаг 3](image/Вставленное изображение 2.png){#fig:003 width=100%}

Копирую ключи (рис. @fig:004).

![Шаг 4](image/Вставленное изображение 3.png){#fig:004 width=100%}

Создаю директорию для предмета (рис. @fig:005).

![Шаг 5](image/Вставленное изображение 4.png){#fig:005 width=100%}

Создаю репозитарий (рис. @fig:006).

![Шаг 6](image/Вставленное изображение 5.png){#fig:006 width=100%}

Перехожу в созданную папку (рис. @fig:007).

![Шаг 7](image/Вставленное изображение 6.png){#fig:007 width=100%}

Клонирую созданный репозиторий (рис. @fig:008).

![Шаг 8](image/Вставленное изображение 7.png){#fig:008 width=100%}

Перехожу в папку arch-pc , удаляю файл package и создаю каталоги (рис. @fig:009).

![Шаг 9](image/Вставленное изображение 8.png){#fig:009 width=100%}

На двух следующих рисунках ввожу команды для отправки на сервер.

![Шаг 10.1](image/Вставленное изображение 9.png){#fig:010 width=100%}

![Шаг 10.2](image/Вставленное изображение 10.png){#fig:011 width=100%}

# Самостоятельная работа

Перемещаю ЛР в указанную папку (рис. @fig:012).

![Шаг 11](image/Вставленное изображение 11.png){#fig:012 width=100%}

Перемещаю предыдущую ЛР в указанную папку (рис. @fig:013).

![Шаг 12](image/Вставленное изображение 12.png){#fig:013 width=100%}

Перемещаюсь в директорию arch-pc и отправляю изменения в ЦР командами get add , get commit –am , get push на рис.14-16.

![Шаг 13.1](image/Вставленное изображение 13.png){#fig:014 width=100%}

![Шаг 13.2](image/Вставленное изображение 14.png){#fig:015 width=100%}

![Шаг 13.3](image/Вставленное изображение 15.png){#fig:016 width=100%}

На рис.17-18 проверяю изменения.

![Шаг 14.1](image/Вставленное изображение 16.png){#fig:017 width=100%}

![Шаг 14.2](image/Вставленное изображение 17.png){#fig:018 width=100%}

# Выводы

Был создан репозитарий, усвоены основные команды и порядок работы с системой git.

::: {#refs}
:::
