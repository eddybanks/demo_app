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

__You may need to sign up for the website__

`mkdir db/data`

__Download the following files and save them into 'db/data'. Rename them with the link names shown below:__

_[film_locations.csv](https://data.sfgov.org/api/views/yitu-d5am/rows.csv?accessType=DOWNLOAD)_

_[recreation_and_park_info.csv](https://data.sfgov.org/api/views/z76i-7s65/rows.csv?accessType=DOWNLOAD)_


* Create the database, run the migrations and seed the data

`rake db:create db:migrate db:seed`

* Set up an env file with the required environment variables. In this application, the figaro gem is installed to facilitate easy access to environment variables. Create an config/application.yml file with the required variables or copy a paste the command below into your terminal.
