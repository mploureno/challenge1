# Challenge#1

This is a web app done to meet a little RoR challenge set by a friend... a pro friend :sunglasses:

### Description
- Create an application where an user can store clients data
- The user should be able to create an account and login to the application
- The user should have first and last name, email and password. The mandatory fields are first name, email and password
- The client should have first and last name, email and mobile phone. The mandatory fields are first name and email
- It should be possible to see all clients in a list. Also it should be possible to edit and delete a client

### Requirements

- Ruby 2.6.3
- Rails 5.2.3
- PostgreSQL 9.5+

### Setup

To get all running do the following:
 ```shell
 bundle
 ```

Setup `config/database.yml` then run:
```shell
 rails db:create 
 rake db:migrate
```

Test your configuration:
```shell
 rails s 
```