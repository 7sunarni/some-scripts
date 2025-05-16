# unpack electon app

FROM dockette/nodejs:v17

RUN npm install -g cnpm --registry=https://registry.npmmirror.com && \
    npm install --engine-strict @electron/asar && \
    npm install --save-dev --save-exact prettier

RUN npx @electron/asar extract app.asar source-code && \
    cd /workspace/source-code/dist/electron 

RUN npx prettier main.js 

