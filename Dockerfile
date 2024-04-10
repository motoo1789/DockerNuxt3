FROM node:20

WORKDIR /KeyManagementUnitTestNuxt3

ENV PATH /KeyManagementUnitTestNuxt3/node_modules/.bin:$PATH

COPY ./KeyManagementUnitTestNuxt3/package*.json ./

RUN npm cache clean --force && \
    npm install -g npm@latest && \
    npm install