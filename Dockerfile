FROM node:14-alpine3.12
COPY ["package.json", "package-lock.json", "/app/"]
WORKDIR /app
RUN npm install
COPY [".", "/app"]
EXPOSE 3000
CMD ["npx", "nodemon", "/app/src/index.js"]
#CMD ["./node_modules/nodemon/bin/nodemon.js", "/app/src/index.js"]