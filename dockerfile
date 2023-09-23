# Usa una imagen oficial de Node.js 18 como imagen base
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos del proyecto (incluyendo package.json y package-lock.json) al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación al contenedor
COPY . .

# Expón el puerto en el que tu aplicación Node.js escucha (ajusta el número de puerto según tu aplicación)
EXPOSE 5000

# Comando para iniciar tu servidor Node.js (ajusta este comando según tu aplicación)
CMD ["npm", "start"]
