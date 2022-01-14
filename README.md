# Bookmark Manager

# Makers week 4 weekly challenge

## User Stories

- As a frequent user of the Internet
So I can visit my favourite websites quickly
I want to see a list of bookmarks

- As a user
So that I can revisit website that I like
I can add bookmarks to the list

- As a user
So that I can get rid of links I no longer need
I can delete bookmarks from the list

## Domain Models

![Domain model 1](./images/domain_model_1.png)

### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
 CREATE DATABASE bookmark_manager;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
