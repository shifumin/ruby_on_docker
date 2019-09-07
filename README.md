# Ruby on Docker
Template for building Ruby application development environment on Docker.  

## Stack
- Ruby 2.6.3

## Readying

```shell
$ docker pull ruby:2.6.3-alpine
```

```shell
$ git clone https://github.com/shifumin/ruby_on_docker
$ cd ruby_on_docker
```

## Examples

```shell
# Create ruby script
$ vim app.rb

# Execute the above script
$ docker-compose run --rm app ruby app.rb
# or docker-compose run --rm --service-ports app ruby app.rb
```
