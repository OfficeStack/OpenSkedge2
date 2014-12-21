# OpenSkedge2

OpenSkedge 2.x Rewrite. *This is under active, tumultuous development*.

## Requirements
* Ruby 2.1.x
* PostgreSQL 9.3+
* Node.js 0.10.x (for Bower)

## Setup

```
bundle install

npm install -g bower

rake bower:install

rake db:create db:migrate db:seed

rails s
```


