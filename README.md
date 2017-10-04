# getting-started-ruby

[![wercker status](https://app.wercker.com/status/3374ec0e37ec2a7e78f1d4b7112d5387/s "wercker status")](https://app.wercker.com/project/bykey/3374ec0e37ec2a7e78f1d4b7112d5387)

This is a sample Python application, using the Sinatra microframework, for use with Wercker.  This application uses the default `ruby` container obtained from the [Docker Hub](https://hub.docker.com/_/ruby/)

## Setup and Build
Firstly, ensure you have the [wercker cli installed](http://devcenter.wercker.com/docs/cli/installation).

Now clone this repo and cd into the directory:

```
git clone https://github.com/wercker/getting-started-ruby.git
cd getting-started-ruby
```

To build the app:
```
wercker build
```

## Running
You can run the sample app in a couple of different ways. With Sinatra installed locally along with Ruby, the first is to simply launch the sample app:
```
ruby main.rb
```

Now point your browser at `http://localhost:4567` to see:
```
{"cities":["Amsterdam","San Francisco","Berlin","New York","Tokyo"]}
```

The second, and more useful, way is to use the `wercker dev` command to launch the binary within a Docker container, using the base image defined in the `box:id` property at the top of the `wercker.yml`, like so:
```
wercker dev --expose-ports
```
The `dev` target inside `wercker.yml` uses the `internal/watch` step to dynamically reload the runtime container when sourcefile changes are detected, which allows you to quickly test changes without having to kill/rebuild/relaunch the container. For instance, add another city to the array on `main.rb:6' like so:

```
return {:cities=> ["Amsterdam", "San Francisco", "Berlin", "New York", "Tokyo", "London"]}.to_json
```

and then refresh your browser pointing to `http://localhost:8080` to see:
```
{"cities":["Amsterdam","San Francisco","Berlin","New York","Tokyo","London"]}
```

---
Sign up for Wercker: http://www.wercker.com

Learn more at: http://devcenter.wercker.com
