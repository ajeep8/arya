FROM node:lts-alpine AS aryabase
RUN apk add --no-cache git \
  && git config --global https.proxy 'http://10.222.1.1:7890' \
  && git clone https://github.com/nicejade/markdown-online-editor.git \
  && cd markdown-online-editor \
  && env PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true yarn

FROM aryabase AS arya

WORKDIR /markdown-online-editor
ENTRYPOINT ["yarn start"]


