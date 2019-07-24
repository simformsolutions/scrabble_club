# simformsolutions/scrabble_club

## Description

A scrabble club requires a system to store members’ information and provide leader boards to show their top performing players.

For members we would want to store information such as the date they joined the club and their contact details.

All recorded scrabble games are head to head matches between 2 players, the player with the highest score at the end of the game wins.


## Requirements

This demo currently works with:

* Rails 5.2.x
* PostgreSQL

If you need help setting up a Ruby development environment, check out these [Rails OS X Setup Guide](https://mattbrictson.com/rails-osx-setup-guide).

## Installation

To make this rub on your system, follow below steps:

1.  Clone the repository
```
git clone git@github.com:simformsolutions/scrabble_club.git
```
2. Check your Ruby version
```
ruby -v
```
The ouput should start with something like ruby `2.5.1` If not, install the right ruby version using `rvm` (it could take a while):
3. Install dependencies
```
bundle install
```
4. Initialize the database
```
rails db:create db:migrate db:seed
```
5. run application
```
rails s
```

## What does it do?

The demo will perform the following steps:

1. Create a players
2. Create new game with players
3. Generating leader boards for games

## What is included?

* Database schema definition (create table statements) of demo 
* A member’s profile screen showing their
  * number of wins
  * number of losses
  * their average score
  * their highest score, when and where it was scored, and against whom
* Interfaces to create and edit members’ details, such as name, contact number etc.
* A leader board screen to list the members with the top 10 average scores, for those members who have played at least 10 matches.

## Database Schema

Database tables used as below
* players to store player details 
```
create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
```

* games to store game details

```
create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
```

* participants to store participant details

```
create_table "participants", force: :cascade do |t|
    t.float "score"
    t.bigint "player_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
```

* Foreign keys

``` 
add_foreign_key "participants", "games"
add_foreign_key "participants", "players"

````
  * Indexes

  ```
  t.index ["game_id"], name: "index_participants_on_game_id"
  t.index ["player_id"], name: "index_participants_on_player_id"
```

## Screenshots
  * Player screen

    * Add new Player https://nimb.ws/4zt7YE
    * List of players https://nimb.ws/3QbSUE
    * Player profile https://nimb.ws/WYMqo6
    * Edit/Delete Player profile https://nimb.ws/znVvOC

  * Game screen

    * Add new Game https://nimb.ws/1bFpRm
    * List of Games https://nimb.ws/uvxUVL
    * Game details https://nimb.ws/tGwMqm
    * Edit/Delete Game https://nimb.ws/MetcSr
  
  * Leader board

    * Leader board https://nimb.ws/6GtARi
