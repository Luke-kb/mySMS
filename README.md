# mySMS: My Student Management System


## Installation

### To setup using docker/docker-compose

From the root directory, execute the following commands:

```
docker-compose build    # builds docker image
docker-compose up -d    # starts up app and db containers in the background
``` 

Next, setup dev and test databases:

```
docker-compose exec app bundle exec rake db:create db:migrate
docker-compose exec app bundle exec rake db:test:prepare
```

Populate database with student data:
```
docker-compose exec app bundle exec rake dev:populate
```

Launch the app at localhost:3000:

```
docker-compose exec app bundle exec rails server -b 0.0.0.0
```

Run rspec tests:
```
docker-compose run app bundle exec rspec -f d
``` 

And to spin down the containers:
```
docker-compose down
```
