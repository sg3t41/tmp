FROM node:22-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY . .

RUN npm i

CMD ["npm", "run", "dev"]
