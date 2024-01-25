FROM node
WORKDIR /app
COPY package.json  /app
COPY . .
ENV APP_ENV=local
ENV APP_URL=http://localhost
RUN npm install
CMD  npm run dev -- --host=0.0.0.0
