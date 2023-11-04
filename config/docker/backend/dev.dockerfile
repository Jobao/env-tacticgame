FROM node:latest
RUN npm i -g @nestjs/cli
RUN mkdir /app
WORKDIR /app
CMD ["npm", "run", "start:dev"]