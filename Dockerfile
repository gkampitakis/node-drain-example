FROM node:lts-alpine

RUN apk add dumb-init

WORKDIR /app

COPY --chown=node:node package* ./  

RUN npm ci --only=production

COPY --chown=node:node . .

EXPOSE 4000

USER node

CMD ["dumb-init", "node", "index.js"]