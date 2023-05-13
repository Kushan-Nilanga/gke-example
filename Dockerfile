FROM --platform=linux/amd64 node:alpine
WORKDIR /app
COPY package*.json .
COPY ./ .
RUN npm install --verbose --force
RUN npm test
EXPOSE 3000
CMD ["npm", "start"]
