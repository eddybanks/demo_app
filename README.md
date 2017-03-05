# Full-Stack Geospatial Querying Demo App

This web application is a demo application that seeks to demonstrate the basic queries and features required in a modern
web application.

## Application Configuration

To set up the application locally, the following steps need to be carried out:

* Git clone this application

`git clone git@github.com:eddybanks/demo_app.git`

* Move into the application directory and install the necessary gems

`cd demo_app`
`bundle install`

* Provide data to be seeded. First, create a folder called 'db/data' then download open data from the links provided below and save them in the 'db/data' folder. The files should be named as stated below in a csv format.

**You may need to sign up for the website

`mkdir db/data`

Download the following files and save them into 'db/data':
** [film_locations.csv](https://data.sfgov.org/Culture-and-Recreation/Film-Locations-in-San-Francisco/yitu-d5am)
** [recreation_and_park_info.csv](https://data.sfgov.org/Culture-and-Recreation/Recreation-Park-Department-Park-Info-Dataset/z76i-7s65)


* Create the database, run the migrations and seed the data

`rake db:create db:migrate db:seed`

* Set up an env file with the required environment variables. In this application, the figaro gem is installed to facilitate easy access to environment variables. Create an config/application.yml file with the required variables or copy a paste the command below into your terminal.

<!-- Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
