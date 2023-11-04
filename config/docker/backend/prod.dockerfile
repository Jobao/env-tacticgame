FROM node:18
RUN npm i -g @nestjs/cli
RUN mkdir /app
COPY . /app
WORKDIR /app
CMD ["npm", "run", "start:prod"]