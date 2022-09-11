FROM node:14-alpine AS arya
#FROM node:lts-alpine AS arya
LABEL authors="Ajeep"

# Create app directory
WORKDIR /app

COPY . .

RUN env PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true yarn
#   && yarn build; yarn cache clean

COPY . /app

EXPOSE 8170

#WORKDIR /markdown-online-editor
CMD [ "yarn", "start" ]
# CMD [ "npm", "start" ]

