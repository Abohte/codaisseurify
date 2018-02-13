# Codaisseurify

Simple Rails app made during the Codaisseur Academy.

Assignment: create an app in charge of managing a collection of songs and their associated artists, using Rails and PostgreSQL. Adding and removing songs via AJAX - DOM manipulation.

![Home Page](app/assets/images/CodaisseurifyHomePage.png)
![Artist Page](app/assets/images/CodaisseurifyArtistPage.png)

## Steps

While working on this app I followed these steps:

1. Setting up project with Rails and PostgreSQL.
2. Adding Bootstrap, jQuery, Devise, RSpec, FactoryBot.
3. Creating models and associations.
4. Setting up controllers.
5. Adding views.
6. Add song add/delete feature.
7. Delete artist with all associated songs.
8. Convert add/delete features to AJAX.

## Database Structure

1. Artists
  * name:string
  * description:text
  * artist_type:string
  * image:string

2. Songs
  * name:string
  * year:integer
  * artist_id:bigint


## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:Abohte/codaisseurify.git
cd codaisseurify
bundle install
rails db:create db:migrate db:seed
rails server
```
