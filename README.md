A docker image with rvm and ruby 3.3.30 already installed

# Usage

```
docker build -t ruby .
docker run -it --rm -v ${PWD}:/usr/local/src ruby bash
```

# Pre 2.0 ruby

```
rvm install 1.9.2 --rubygems 2.7.9
```
