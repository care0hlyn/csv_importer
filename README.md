#CSV Importer

This is a code challenge for Mindspace. It takes csv files and imports the data onto the site.

##Authors
Carolyn Huynh

##Setup
In your terminal, clone the repo

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.
