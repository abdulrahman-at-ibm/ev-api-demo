# EV API Demo

A demo CRUD API which stores electric vehicle data running on Docker with Docker Compose.

## System dependencies
* Docker
* Docker Compose
* Ruby: ruby 3.0.1p64
 
## Configuration
Add a `.env` file with environment variables. See `.env.example`.

## Build the containers

```sh
docker-compose build
```

## Database creation
Create the database:
```sh
docker-compose run --rm web bash -c "rails db:create && rails db:migrate"
```

Add seed data:
```sh
docker-compose run --rm web bash -c "rails db:seed"
```

## Run the application
```sh
docker-compose up
```

Go to `http://localhost:3000/api/v1/vehicles`.

## How to run the test suite
Install Rspec:
```sh
docker-compose run --rm web bash -c "rails generate rspec:install"
```

Run the tests:
```sh
docker-compose run --rm web bash -c "bundle exec rspec"
```

## Services (job queues, cache servers, search engines, etc.)
None.

## Deployment instructions

### Heroku
```sh
heroku login
heroku apps:create <app-name>
git push heroku master
heroku run rails db:migrate
```

Go to `http://localhost:3000`
