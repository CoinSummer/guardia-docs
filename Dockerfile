FROM node:latest
LABEL description="Guardia Docs"
WORKDIR /docs
RUN npm install -g docsify-cli@latest
COPY . /docs
EXPOSE 3000/tcp
ENTRYPOINT docsify serve .