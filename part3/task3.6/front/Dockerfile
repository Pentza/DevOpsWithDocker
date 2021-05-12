FROM node:alpine AS build-stage
WORKDIR /usr/src/app
COPY ./frontend .
RUN npm install && npm run build



FROM nginx:1.19-alpine
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8000

COPY --from=build-stage /usr/src/app/build/ /usr/share/nginx/html
