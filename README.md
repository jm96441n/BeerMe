# BeerME README

### What is this?

This is an application to help a user find a new beer.

Users will be able to narrow their search through a few different methods:

  * Selecting through category and then beer style.
  * Selecting by brewery
  * Selecting a random beer (soon to come: filters on random beer for category and style)
  * Selecting by beer name

### How did you make it?

This application is built using:
  * Ruby 2.4.1
  * Rails 5.1.5
  * React (via the [react_on_rails](https://github.com/shakacode/react_on_rails) gem)
  * Typescript 1.3.2
  * Postgres 10.2
  * [OpenBeerDB](http://openbeerdb.com/)

### Getting Started

To get this application up and running locally:
  * Clone this into your local directory using `git clone https://github.com/jm96441n/BeerMe.git`
  * Install gems with `bundle install`
  * Install yarn packages with `yarn`
  * If you don't have foreman locally run `gem install foreman`
  * Setup your database using:
    * `bundle exec rails db:create`
    * `bundle exec rails db:migrate`
    * `bundle exec rails db:seed` (this is to generate the beer in your local database)
  * To start up your server run `foreman start -f Procfile.dev`

### Running Specs/Scenarios

For the specs you need to run `bundle exec rspec`

For the scenarios you need to run `bundle exec cucumber`
