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

## Setup Production Environment
- Start PostgreSQL service if you have installed but it hasn't started
  `pg_ctl -D /usr/local/var/postgres start`