# Step 1
FROM node:15.12.0-alpine3.13 as build-step
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install && npm update
COPY . /app
RUN npm run build

# Stage 2
FROM nginx:stable-alpine
RUN apk --no-cache add curl
COPY --from=build-step /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]