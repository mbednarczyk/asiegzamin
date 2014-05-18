Aplikacja egzaminacyjna z przedmiotu Architektura serwisów internetowych.
==========
##Travis
[![Build Status](https://travis-ci.org/mbednarczyk/asiegzamin.svg?branch=master)](https://travis-ci.org/mbednarczyk/asiegzamin)
##GITPower Team: 
- Marek Bednarczyk
- Maciej Kucharski
- Jan Kąkol

##Link do appki
Nasza aplikacja wdrożona na [ShellyCloud](http://asiegzamin.shellyapp.com/)

##Funkcjonalności
Aplikacja opiera się na funkcjonalnościach CRUD (dodawanie, usuwanie, edytowanie i odczytywanie wrzutek).

##Funkcjonalności dodatkowe
- Kolorowanie wrzutki na stronie głownej jak i podczas podglądu,
- Paginacja (infinite scrolling),
- Przycinanie kodu na stronie głównej, gdy jest zbytł długi,
- Facebookowe “lajki” - posiadacz konta w serwisie społecznościowym może polubić piękną aplikacje :)!,
- Wyszukiwanie wrzutek po języku programowania,
- Responsive web desing,
- Nowe:
  - Możliwość logowania się do aplikacji poprzez konta na Githubie oraz Facebooku
  - Każda wrzutka posiada swojego autora: jeśli użytkownik się zaloguje w pole 'autor' trafia jego nazwa z gita lub fb, jeśli wrzutke dodaje użytkownik niezalogowany w pole 'autor' trafia napis "Niezalogowany użytkownik",
- Ograniczenie długości wyświetlanej nazwy autora na głownym widoku (zapobiega to niszczeniu wyglądu)

##Użyte gemy (dodatkowe)
- bootstrap-sass,
- will_paginate,
- will_paginate-bootstrap,
- pygments.rb,
- redcarpet,
- shelly-dependencies,
- rspec-rails,
- factory_girl_rails,
- omniauth-github,
- omniauth-facebook

##Testy
Do aplikacji zostały dopisane testy:
- widoków,
- logowania,
- modeli,
- kontrolerów


