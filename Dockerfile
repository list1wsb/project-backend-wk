# Użyj oficjalnego obrazu Python jako obrazu bazowego
FROM python:3.8-slim

# Ustaw katalog roboczy
WORKDIR /usr/src/app

# Kopiuj plik requirements.txt do katalogu roboczego
COPY requirements.txt ./

# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt

# Kopiuj foldery i pliki aplikacji do katalogu roboczego
COPY app/ app/
COPY config/ config/
COPY .github/workflows/ .github/workflows/

# Kopiuj pozostałe pliki aplikacji do katalogu roboczego
COPY app/main.py app/
COPY app/tests.py app/
COPY README.md ./

# Odsłoń port, na którym będzie działać aplikacja
EXPOSE 8080

# Uruchom aplikację
CMD [ "python", "app/main.py" ]
