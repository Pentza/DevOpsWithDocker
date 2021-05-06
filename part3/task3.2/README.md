## Commands:
---
### Build image:
```
docker build . -t hub-publisher
```

### Run hub-publisher:

You need five arguments in this order
- 1. Private access token from github
- 2. Name of the repository to be cloned like this, `owner/repo-name`
- 3. Name for your image
- 4. Docker-hub username
- 5. Docker-hub password

```
docker run --privileged -v /var/run/docker.sock:/var/run/docker.sock hub-publisher {private-access-token} {owner/repository} {name-for-image} {username} {password}
```