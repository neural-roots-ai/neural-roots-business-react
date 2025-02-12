#####################################
## NEURAL ROOTS BUSINESS CONTAINER ##
#####################################

# This Dockerfile is used to build a container that runs a rect.js app
# Use the official Node.js 22.13.1 image

FROM node:22.13.1-alpine

COPY ./app /app

WORKDIR /app

RUN yarn install  # Pre-install dependencies at build time

RUN npm run build . # Pre-build your app at build time