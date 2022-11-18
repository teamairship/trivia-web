# Trivia Web - README

A Trivia App created through the culmination of the minds of developers at Airship, written in Ruby on Rails.

The app is a trivia game that fetches questions from a 3rd party API and allows users to play against each other in a live game. The game is a timed game, and the user with the most points at the end of the game wins.

## Requirements

1. Install Ruby >= 2.7.0
2. Install PostgreSQL >= 12.0

## Configuration

Database: PostgreSQL
CSS: Tailwind CSS
Javascript: Stimulus JS

## Getting Started
1. `git clone git@github.com:teamairship/trivia-web.git`
2. Use env.example to create a .env file.  Confidential values will be in 1Password.
3. `bundle install`
4. `rails db:setup`
5. `rails s` to start the server

## Contributing

1. Create a branch off of `main` with the following naming convention: `feature/your-feature-name`
2. Make your changes
3. Create a detailed pull request to merge your branch into `main`
    - What is the purpose of this PR?
    - What is the impact of this PR?
    - Why is this PR necessary?
4. Request a review from a team member
5. Once approved, merge your branch into `main`

## Testing
TODO: Add testing instructions

## Deployment

TODO: Add deployment instructions

## Pending Decisions

- [ ] Define the Data Model
- [ ] Choose a deployment platform (Heroku, AWS, Hatchbox, Fly.io, etc.)
- [ ] Choose an Authentication Serivce (Auth0, Devise, Stytch, Magic Link, etc.)
- [ ] Choose a 3rd Party API for questions ([Open Trivia DB](https://opentdb.com/), [The Trivia DB](https://the-trivia-api.com/docs/), etc.)

