# Quiz Science

Приложение для прохождения квизов по предметам: математика, физика и химия.

## Описание проекта

Quiz Science - это мобильное приложение на Flutter для прохождения интерактивных квизов по трем предметам: математика, физика и химия. Приложение позволяет пользователям выбрать предмет, ответить на вопросы с множественным выбором и получить результаты с детальным разбором ответов.

## Что было сделано

- Создана структура проекта с разделением на экраны, виджеты, модели, сервисы и константы
- Реализованы три основных экрана: выбор предмета, прохождение квиза и просмотр результатов
- Создана система вопросов с 18 вопросами для каждого предмета (случайный выбор 6 вопросов)
- Реализована навигация между экранами
- Добавлена поддержка прокрутки на всех экранах
- Созданы переиспользуемые виджеты для карточек, кнопок и вариантов ответов
- Настроены цвета приложения в отдельном файле констант
- Адаптирован интерфейс для портретной ориентации
- Добавлена иконка приложения для Android
- Настроено название приложения "Quiz Science" для Android

## Используемые пакеты

- `flutter` - основной фреймворк
- `cupertino_icons` - иконки для iOS стиля
- `flutter_lints` - линтеры для проверки кода
- `flutter_launcher_icons` - генерация иконок приложения (dev dependency)

## Архитектура

Проект следует принципам SOLID и KISS. Код организован в следующие директории:

- `lib/screens/` - экраны приложения
- `lib/widgets/` - переиспользуемые виджеты
- `lib/models/` - модели данных
- `lib/services/` - бизнес-логика
- `lib/constants/` - константы (цвета, данные вопросов)

---

# Quiz Science

A mobile application for taking quizzes on subjects: mathematics, physics, and chemistry.

## Project Description

Quiz Science is a Flutter mobile application for taking interactive quizzes on three subjects: mathematics, physics, and chemistry. The application allows users to select a subject, answer multiple-choice questions, and receive results with a detailed breakdown of answers.

## What Was Done

- Created project structure with separation into screens, widgets, models, services, and constants
- Implemented three main screens: subject selection, quiz taking, and results viewing
- Created a question system with 18 questions per subject (random selection of 6 questions)
- Implemented navigation between screens
- Added scroll support on all screens
- Created reusable widgets for cards, buttons, and answer options
- Configured application colors in a separate constants file
- Adapted interface for portrait orientation
- Added application icon for Android
- Configured application name "Quiz Science" for Android

## Used Packages

- `flutter` - main framework
- `cupertino_icons` - icons for iOS style
- `flutter_lints` - linters for code checking
- `flutter_launcher_icons` - application icon generation (dev dependency)

## Architecture

The project follows SOLID and KISS principles. Code is organized into the following directories:

- `lib/screens/` - application screens
- `lib/widgets/` - reusable widgets
- `lib/models/` - data models
- `lib/services/` - business logic
- `lib/constants/` - constants (colors, question data)
