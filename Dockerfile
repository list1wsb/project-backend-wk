# Użyj oficjalnego obrazu Python jako obrazu bazowego
FROM python:3.8-slim

# Ustaw katalog roboczy
WORKDIR /usr/src/app

# Kopiuj plik requirements.txt do katalogu roboczego
COPY requirements.txt ./

# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt

# Kopiuj pozostałe pliki aplikacji do katalogu roboczego
COPY . .

# Odsłoń port, na którym będzie działać aplikacja
EXPOSE 8080

# Uruchom aplikację
CMD [ "python", "app.py" ]
