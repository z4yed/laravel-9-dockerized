FROM node:16-alpine

WORKDIR /app/client

COPY . .

EXPOSE 3000

# if node_modules present in host, directly run the server
# else install packages and run the server
CMD [ -d "node_modules" ] && npm run dev || npm ci && npm run dev