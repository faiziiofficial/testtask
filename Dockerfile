FROM node
WORKDIR /app
COPY package.json  /app
COPY . .
ENV APP_ENV=local
EXPOSE 80
EXPOSE 5173
ENV APP_URL=http://localhost
RUN npm install
CMD  npm run dev -- --host=0.0.0.0
