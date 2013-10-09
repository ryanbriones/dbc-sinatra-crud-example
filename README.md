# Ryan's First Sinatra CRUD app

This is an app that will allow you to store, edit and manage contacts.

## Getting Started

Clone the app

    $ git clone https://github.com/ryanbriones/dbc-sinatra-crud-example.git
    $ cd dbc-sinatra-crud-example

Install bundled gems

    $ bundle install

Setup your database

    $ bundle exec rake db:create
    $ bundle exec rake db:migrate

*NOTE: Because of the way the sinatra skeleton is built, you may experience an issue with `rake db:create`. This is because Mac OS X includes some postgresql utilities by default that don't work well with the postgresql installation you've done. If this is the case, if this is the case, you'll want to edit `Rakefile` line 92 which looks like*

    exec("createdb #{DB_NAME}")

*To be something more like:*

    exec("/usr/local/bin/createdb #{DB_NAME}")

*`/usr/local/bin` is where [Homebrew](http://brew.sh/) puts things by default.*

Run your application using `shotgun`. `shotgun` is installed as a result of `bundle install`

    $ shotgun

Profit! http://localhost:9393/

## Authors

For complaints... or praise...

Ryan Briones <ryan@devbootcamp.com>