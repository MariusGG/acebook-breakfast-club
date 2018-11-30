# AceBook!  [![Build Status](https://travis-ci.org/chloeverity/acebook-breakfast-club.svg?branch=master)](https://travis-ci.org/chloeverity/acebook-breakfast-club)

This is a 2-week engineering project we undertook at Makers - the task being to create a basic clone of our favourite privacy-invading social network. This is a Ruby on Rails project primarily, but we used jQuery and CoffeeScript to handle client-side rendering and asynchronous behaviour. 

Here is a link to our app in production: https://acebook-breakfast-club.herokuapp.com/

## Features

Our app has the following features: 
 - Signing up
 - Logging in / out
 - Creating, updating and deleting posts
 - Creating, updating and deleting comments on posts
 - Liking and unliking posts using jQuery
 - Live chat in user-created chatrooms, using Action Cable and CoffeeScript
 - Creating photo albums and uploading photos using Active Storage

## Initial User Stories

These are the user stories we wrote to get ourselves started with the project and reach our MVP (we completed this by the end of the second day).

`````
As a user,
so that I can use AceBook,
I want to sign up and login.

As a user,
so that I can let the world know what I am up to,
I want to create a post.

As a user,
so that I can fix mistakes,
I want to able to edit and delete posts.

As a user,
so that I can engage in a healthy debate,
I want to comment on other users' posts.

``````

## User interaction diagram

Here is a diagram that models a user making a POST request to our app to make a new AceBook post.

![image](https://i.imgur.com/gzqKsEr.png)

## Our learning logs
- [Here](https://waffle.io/chloeverity/acebook-breakfast-club) is our card wall for the project
- [Here](https://github.com/chloeverity/acebook-breakfast-club/wiki) is our learning log that we updated each day.
- [Here](https://medium.com/the-breakfast-club-acebook-blog) is our blog that we kept with occasional posts.

## Installing and running the app

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Contributing

Feel free to open a GitHub issue with anything you notice. Fork then clone the repository if you want to make any changes, then make a pull request with your changes. Changes must be approved in a pull request before being merged into the master branch.
