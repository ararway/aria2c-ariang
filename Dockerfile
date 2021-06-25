FROM node:lts-buster

WORKDIR /app
COPY package.json .
COPY setup.sh .
RUN bash setup.sh
COPY yarn.lock .
RUN yarn
COPY . .
ENV PORT=8080
EXPOSE $PORT
CMD ["bash", "start.sh"]
