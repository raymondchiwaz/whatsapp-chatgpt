FROM node:bullseye-slim

WORKDIR /app/

ENV OPENAI_API_KEY "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"
ENV PREFIX_ENABLED ""

COPY . .

RUN npm install
RUN npm install vite-node
RUN apt-get update
RUN apt-get install chromium -y

CMD ["npm", "run", "start"]
