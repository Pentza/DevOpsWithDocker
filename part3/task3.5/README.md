## Size before changing:

```
REPOSITORY     TAG       IMAGE ID       CREATED      SIZE
front          latest    0cb0be3384eb   3 days ago   446MB
back           latest    995820ae406e   3 days ago   246MB
```

## After changes:

```
front3.5       latest    a5b9868df2ca   19 minutes ago   333MB
back3.5        latest    452acab01638   4 minutes ago    447MB
```

Backend is bigger because we dont remove things we dont need after building.


