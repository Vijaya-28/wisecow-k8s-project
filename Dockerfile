FROM node:18
WORKDIR /app
COPY src/ ./
RUN npm install
EXPOSE 4499
CMD ["node", "index.js"]