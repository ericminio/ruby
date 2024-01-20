A docker image with [`rvm`](https://rvm.io/) already installed

# Usage

```
docker build -t ruby .
docker run -it --rm -v ${PWD}:/usr/local/src ruby bash
```

# Pre 2.0 ruby

in the container

```
rvm install 1.9.2 --rubygems 2.7.9
```
