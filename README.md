# Instrukcja obsługi projektu

Ten projekt wymaga zainstalowania Flask i pylint. Aby uruchomić plik main.py, należy najpierw pobrać projekt i wypakować pliki.

## Instalacja Flask i pylint

Aby zainstalować Flask i pylint, można użyć pipa. Otwórz terminal i wpisz:
pip install Flask pylint

Upewnij się, że pip jest zainstalowany w Twoim systemie. Można to sprawdzić wpisując w terminalu:
pip --version

Jeśli nie masz pipa, należy go zainstalować.

## Uruchamianie aplikacji 
### Bez Dockera

Aby uruchomić aplikację, należy uruchomić plik main.py. Można to zrobić w terminalu, wpisując:
python main.py

Po uruchomieniu, aplikacja będzie działać na porcie 5000. Aby wyświetlić stronę w przeglądarce, należy wpisać adres http://127.0.0.1:5000.

Zmiana wiadomości powitalnej

Aby zmienić wiadomość powitalną, należy dopisać do adresu /hello. Na przykład:
http://127.0.0.1:5000/hello

Wyświetli wiadomość "hello".

### Z Dockerem

Upewnij się, że Docker jest zainstalowany na Twoim komputerze. Następnie otwórz terminal i przejdź do katalogu z projektem. Uruchom poniższe polecenia, aby zbudować obraz Dockera i uruchomić kontener:

docker build -t my-app .

docker run -p 8080:8080 --name my-app-container my-app

Po uruchomieniu, aplikacja będzie działać na porcie 8080. Aby wyświetlić stronę w przeglądarce, należy wpisać adres http://localhost:8080.

Aby zmienić wiadomość powitalną, należy dopisać do adresu /hello. Na przykład:
http://localhost:8080/hello

Wyświetli wiadomość "hello".
