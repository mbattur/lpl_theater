# README

LPL Movie Theater App

This app is designed to handle LPL Cinema's online ticket sales and provide the Cinema's admin a report and view of orders, showtimes, movies, and customers. 

The app uses Ruby on Rails and utilizes scaffolding to speed up the development time. Bootstrap is used as a front-end framework because of its ease of use and speed. 

Postgres is the database of choice, as the app is deployed to Heroku. User authentication is handled by Devise. 

ActiveAdmin was added to handle most of the admin related parts, but decided to use custom views and logic, as it got complicated to do some complicated logic. However, it was a good experience adding ActiveAdmin and experimenting with it. 

The app has a `main` branch, which has a stable code base. Developers would branch off the `main` branch and when done with a feature merge the feature branch to the `main` branch. Next, the `main` branch will be pushed up to the repo and deployed to Heroku. 


* Ruby version - Ruby 3.0.3

* Rails version - Rails 7.0.2.3

* Database - Postgres

Credit card number validation: Credit and debit cards have a total of 16 digits printed on the front, though a card can have as many as 19 digits or as little as 13. Source: https://www.point.app/article/a-guide-to-understanding-the-numbers-on-credit-debit-cards