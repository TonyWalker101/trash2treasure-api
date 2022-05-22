# Trash2Treasure API

Backend API of the final project for the Lighthouse Labs Web Development Program created by [spomberg](https://github.com/spomberg), [TonyWalker101](https://github.com/TonyWalker101) and [isissi](https://github.com/isissi).

Trash2Treasure is a platform for users to list items (treasures) that are being left for donation in public spaces. It realies heavily on geolocation and the Google Maps API. Users are able to add and claims donations/trasures, comment on each donation and search by location and item name.

To be used in conjunction with the [frontend app](https://github.com/TonyWalker101/trash2treasure).

Created with Ruby 2.6.6 and Rails 6.1.5.

## System dependencies
- sqlite3
- puma
- jbuilder
- pg
- faker
- http
- rack-cors
- google-maps

## Configuration
- Run 'bundle install' to install required gems
- Rename config/local_env.example.yml to config/local_env.yml and add a valid Google Maps API key string.

## Database creation
- Run 'rails db:setup' to create the database, load the schema and initialize the seed data.
