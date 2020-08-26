TBX Master Data Category List API
=================================

Welcome to the TBX Master Data Category List API.  The API is a simple RESTful
API which provides two routes for receiving the list of data categories and the
permitted classification elements.

Routes
------

The following routes are available:

  * /                   [GET]       -This is the index page, provides a list of routes.

  * /datcats            [GET]       -Returns JSON containing the full list of data categories
                                     (with their associated properties)

  * /classifications    [GET]       -Returns JSON containing the full list of permitted
                                     classification elements in TBX.

Installation
------------

Initialize and update submodules:
```
$ git submodule init
$ git submodule update
```

Create an SQL database (The default name is 'tbx_master_dcs').  Import the SQL file in "src/TBXMasterListBundle/Resources/data/tbx_master_dcs.sql".

Clone this repository into the appropriate directory on your webserver.

Download Composer:
```
$ curl -sS https://getcomposer.org/installer | php -- --filename="composer"
```

Install Symfony:
```
$ php composer install
```

When prompted, provide the database credentials.


Clear the cache:
```
$ php app/console cache:clear --env=prod
```