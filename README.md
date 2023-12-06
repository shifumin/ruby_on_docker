# Ruby on Docker
Template for building Ruby application development environment on Docker.

## Stack
- Ruby 3.2.2

## Readying

```shell
$ docker pull ruby:3.2.2
```

```shell
$ git clone https://github.com/shifumin/ruby_on_docker dir_name
$ cd dir_name
```

## Examples

```shell
# Create ruby script
$ vim app.rb

# Execute the above script
$ docker compose run --rm app ruby app.rb
# or docker compose run --rm --service-ports app ruby app.rb
```
