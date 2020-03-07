# User stories

* I, nastytakito, as ceo of nastygames corp,
want a platform for users to create lists of pokemon, so they can get shuffled pokemon from the list and battle using them.

* As a user, I want to invite up to 8 users to my created lists, so they can choose only 3 pokemon to shuffle between
all members of the list.

* As a user, I want to be able to kick users from the list and all their chosen pokemon, so I can have control of the 
users inside my lists.

* As a user, I want to ask to the lists owners to join, and participate in the pokemon shuffle battle on their 3ds/switch

### Concerns

* A user model should have name, last name, email, encrypted password as base

* A generation table must be created to define old and new generations. must contain generation number, roman number and region name

* A list must be created by a user, and its model will contain name, owner_id, visible flag and deleted flag

* Each user that joins a list will be in a table matching the list, the user and also some other values like a string 
status flag

* When the list owner kicks a user, its user-list status will be changed from granted to rejected 

* A user with any but banned status, will have the ability to ask owner to join their list

### START CODING WIIIIIÍ

Backlog
---

*[ ] Create user model
*[ ] Create user registration endpoint
*[ ] Create user login endpoint

---

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...