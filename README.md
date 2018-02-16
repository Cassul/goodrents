# README

# Goodrents

## Technologies:
Backend:
- Ruby
- Ruby on Rails

Database:
- PostgreSQL

Frontend:
- HTML
- CSS
- Bootstrap
- Javascript
- JQuery
- App's own API
- Google maps API

Link to app on Heroku:
[Goodrents] (https://goodrents.herokuapp.com)

## Our users and main idea: 
> All Melbournians that rent. Anyone who wants to find more information about their future home or who wants to leave a review about their current/previous apartment. Main idea is "Zomato for properties".
> Review reflects the landlord's attitude, quality of utilities, subjective asessment of neighbours and neighbourhood with room for comments from users

## Approach
> This app uses Rails on the backend with embedded Google maps, Google Maps Search Bar and AJAX calls to our own API on the front-end.
> Database is with Postgres. It consists of 5 tables and a visual representation that can be found in the pdf file attached

## Requirements to use this app
> Users of this application will not need to install any extra tools.
> Mandatory sign up implemented before reviews can be created

## Unsolved Problems
1. Users id are passed through query string in message window. Need to pass it through hidden input or through "codded string"
2. Need to implement images storage with S3 service
3. Improve perfomance
4. Need to work out how the icons will be grouped with different zoom
5. When user press "back" keypad - possibility to return to the previous map zoom in the same are
