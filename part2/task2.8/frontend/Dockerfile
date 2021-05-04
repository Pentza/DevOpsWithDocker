# We need node
FROM node:14.16.0-slim

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./example-frontend .

# Install all packages, found from README
RUN npm install

# Build static files, found from README
RUN npm run build

RUN npm install -g serve

RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

CMD serve -s -l 5000 build

