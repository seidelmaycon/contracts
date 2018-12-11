# Contracts App

[![CircleCI](https://circleci.com/gh/seidelmaycon/contracts.svg?style=svg)](https://circleci.com/gh/seidelmaycon/contracts)

### Demo

You can check a demo of this application on: https://contracts-app.herokuapp.com

### Configuration

#### Dependencies

* [Ruby 2.5.3](https://www.ruby-lang.org)
* [Bundler 1.17.1+](http://bundler.io)
* [PostgreSQL 10.6](https://www.postgresql.org)

#### Installation

After cloning the repository, access  the folder and install the dependencies:

```
cd contracts && bundle install
```

##### Database

Run the following commands to setup the database:
```
bundle exec rails db:setup
```

Then you will be able to run: 

- `rails server` to run the app server to access application on `localhost:3000`.
- `rspec` to run the unit test suit.
