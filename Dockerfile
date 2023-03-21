# Użyj oficjalnego obrazu Node.js jako obrazu bazowego
FROM node:14

# Ustaw katalog roboczy
WORKDIR /usr/src/app

# Kopiuj plik package.json i package-lock.json do katalogu roboczego
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Kopiuj pozostałe pliki aplikacji do katalogu roboczego
COPY . .

# Odsłoń port, na którym będzie działać aplikacja
EXPOSE 8080

# Uruchom aplikację
CMD [ "node", "app.js" ]
