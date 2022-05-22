# Trash2Treasure API

Backend API of the final project for the Lighthouse Labs Web Development Program created by [Marcos Spomberg](https://github.com/spomberg), [Tony Walker](https://github.com/TonyWalker101) and [Siyi Xie](https://github.com/isissi).

## Trash2Trasure
Trash2Treasure is a platform for users to list items (treasures) that are being left for donation in public spaces. It realies heavily on geolocation and the Google Maps API. Users are able to add and claims donations/trasures, comment on each donation and search by location and item name.

To be used in conjunction with the [frontend app](https://github.com/TonyWalker101/trash2treasure).

Created with Ruby 2.6.6 and Rails 6.1.5.

## System dependencies
- SQLite3
- Puma
- JBuilder
- Postgres
- Faker
- HTTP
- rack-cors
- Google Maps

## API Setup
1. cd into the directory 
2. Run `bundle install` to install required gems
3. Rename config/local_env.example.yml to config/local_env.yml and add a valid Google Maps API key string.
4. Run `rails db:setup` to create the database, load the schema and initialize the seed data.
5. Run `rails start` to start the API.

## Frontend Setup
1. Clone the [frontend app](https://github.com/TonyWalker101/trash2treasure).
2. cd into the directory 
3. Run `npm install` to install the dependencies.
4. Run `npm start`
