# Task 1.16: Heroku


Commands to push image to heroku.
```
>  docker pull devopsdockeruh/heroku-example
>  docker tag devopsdockeruh/heroku-example registry.heroku.com/docker-task/web
>  heroku login
>  heroku container:login
>  docker push registry.heroku.com/docker-task/web
>  heroku container:release web -a docker-task
```
**Link to Heroku:**  
https://docker-task.herokuapp.com/