# GoSurf - Школа серфинга

Сайт для школы серфинга GoSurf, разработанный на Vue.js с использованием SCSS.

## Структура проекта

- `src/assets/styles/` - SCSS стили проекта
  - `variables.scss` - переменные (цвета, шрифты, размеры)
  - `mixins.scss` - миксины для повторного использования стилей
  - `global.scss` - глобальные стили

- `src/components/` - Vue компоненты
  - `TheHeader.vue` - Шапка сайта с меню навигации
  - `TheHero.vue` - Главный экран
  - `AboutSection.vue` - Секция "О нас"
  - `ServicesSection.vue` - Секция "Услуги"
  - `SpotsSection.vue` - Секция "Спот-туры"
  - `ContactSection.vue` - Секция "Контакты" с формой обратной связи
  - `TheFooter.vue` - Футер сайта

## Установка и запуск

1. Установите зависимости:
   ```bash
   npm install
   ```

2. Запустите проект в режиме разработки:
   ```bash
   npm run dev
   ```

3. Соберите проект для продакшена:
   ```bash
   npm run build
   ```

## Особенности

- Адаптивный дизайн, оптимизированный для всех устройств
- Компонентный подход с использованием Vue.js
- Структурированные SCSS стили с переменными и миксинами
- Оптимизированная производительность
- Семантическая верстка

## Технологии

- Vue.js
- SCSS (Sass)
- Vite (сборка проекта)

## Изображения

Для полноценной работы сайта добавьте изображения в директорию `/public/images/`:
- hero-bg.jpg - фоновое изображение для главного экрана
- about-surf.jpg - изображение для раздела "О нас"
- spot-bali.jpg, spot-portugal.jpg, spot-hawaii.jpg - изображения для спот-туров

## Recommended IDE Setup

[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur).

## Customize configuration

See [Vite Configuration Reference](https://vite.dev/config/).
