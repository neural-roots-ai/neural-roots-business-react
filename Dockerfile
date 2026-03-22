#####################################
## NEURAL ROOTS BUSINESS CONTAINER ##
#####################################

# Stage 1: Build
FROM node:22.13.1-alpine AS builder
COPY ./app /app
WORKDIR /app
RUN yarn install
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html

# optional: custom nginx config for React Router support
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]