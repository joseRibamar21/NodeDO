FROM node:alpine

WORKDIR usr/app

#copia tudo que começa com package e termina com .json
COPY package*.json ./
#rodar o npm install
RUN npm install
#Copiar todas as pastas
COPY . .
#A porta que o servidor precisa expor para a maquina
EXPOSE 3000
#Comando que precisa para o servidor começar
CMD ["npm" , "start"]