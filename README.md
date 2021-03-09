# mySMS: My Student Management System


## Installation

### To setup using docker/docker-compose

From the root directory, execute the following commands:

```
docker-compose build    # builds docker image
docker-compose up -d    # starts up app and db containers in the background
``` 

Next, create and run the first migration of the test database:

```
docker-compose run app bundle exec rake db:create
docker-compose run app bundle exec rake db:migrate
```
*You should now have access to the rails app at localhost:3000*

And to spin down the containers:
```
docker-compose down
```