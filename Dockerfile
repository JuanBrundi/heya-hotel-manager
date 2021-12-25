FROM node:16.13-alpine as development
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
CMD yarn start:dev

# FROM node:16.13-alpine as production
# ARG NODE_ENV=production
# ENV NODE_ENV=${NODE_ENV}
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN yarn install --production
# COPY . .
# COPY --from=development /usr/src/app/dist ./dist
# CMD ["node", "dist/main"]