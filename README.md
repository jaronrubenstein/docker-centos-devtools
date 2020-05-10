# jaronrubenstein/docker-centos-devtools

Dockerized CentOS with 'Development tools' packages installed.

## Building Docker Images via CI/CD

To build the CentOS 8 Docker image:
```
  git checkout el8
  ... make edits ...
  git commit -am 'message'
  git push origin el8
```

To build the CentOS 7 Docker image:
```
  git checkout master
  ... make edits ...
  git commit -am 'message'
  git push origin master
```

To build the CentOS 6-tagged Docker image:
```
  git checkout 6
  ... make edits ...
  git commit -am 'message'
  git push origin 6
```
