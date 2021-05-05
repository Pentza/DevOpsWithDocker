## Changes:

### Frontend Dockerfile:

  change

  ```
  RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build
  ``` 
  
  to 
  
  ```
  RUN REACT_APP_BACKEND_URL=http://localhost/api npm run build
  ```

  add `proxy_set_header Host $host;` to nginx.conf