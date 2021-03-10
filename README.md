# mySMS: My Student Management System


## Installation

### To setup using docker/docker-compose

From the root directory, execute the following commands:

```
docker-compose build    # builds docker image
docker-compose up -d    # starts up app and db containers in the background
``` 

Next, setup database:

```
docker-compose run app bundle exec rake db:create db:migrate
docker-compose run app bundle exec rake db:test:prepare
```
Launch the app at localhost:3000:

```
docker-compose execute app bundle exec rails server -b 0.0.0.0
```

Run rspec tests:
```
docker-compose run app bundle exec rspec
``` 

And to spin down the containers:
```
docker-compose down
```