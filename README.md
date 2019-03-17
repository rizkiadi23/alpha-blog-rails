# Simple Rails Alpha Blog
This is sample blog app created using Ruby on Rails

## Basic Feature of the Alpha Blog
- Simple CRUD actions for User creation
- Simple CRUD actions for Article
- Simple User Authentication
- Simple Access Level (Admin & Non-Admin User)

## How to Install
- Make sure you have ruby & rails installed in your local machine
- Clone this repository
- Run `bundle install`
- Run `rails db:migrate db:create` to setup the database
- Run the server `rails s`
- Open your browser and go to `localhost:3000` to check the Alpha-Blog

## Testing Classes
- The test used by Alpha-Blog is the generic set test from Rails
- To add more test cases, `cd test` then add the test
- To run the test use `rails test` 
- To display the code coverage of the apps run this command:
  `cd coverage && open index.html`

## Dockerized Apps & Using Development Env
- Setup files `Dockerfile & docker-compose.yml` Accordingly
- Run: `docker-compose build`
- Run: `docker-compose up -d`
- Run: `docker-compose run web rake db:migrate db:create`

## Access Web App Container
Fixing Styling: by default, Rails will serve assets within /public and not compiling live, if these assets exists.
To get rid of it, either delete the assets within the public dir, or add the following line into you config/environments/development.rb

- Add `config.serve_static_assets = false`
But before that, you must enter your container using : `docker exec -it rails-alpha-blog_web_1 /bin/bash`

## Additional Info
- Start PostgreSQL service if you have installed but it hasn't started
  `pg_ctl -D /usr/local/var/postgres start`