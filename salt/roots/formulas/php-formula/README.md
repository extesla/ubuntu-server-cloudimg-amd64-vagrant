# php-formula

This [Salt Stack](https://github.com/saltstack/salt) formula for installing [PHP](http://www.php.net/) is derived from the official Salt Stack [php-formula](https://github.com/saltstack-formulas/php-formula) which presents both a legacy and a "next generation" way of installing PHP. This repository utilizes solely the "next generation" methodology of the official PHP formula.

## Why create a separate formula?

Primarily because everytime I went to install PHP using the official formula, `apache2` would be installed. That would be great if I were using `apache2` in most projects, but I'm not.

## What is this?

These formulas, as stated by the formula from which this derives are "[f]ormulas to set up and configure php and various php libraries."

> **NOTE:** See the full [Salt Formulas installation and usage instructions](http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).

## Available states

The following states provide an alternate approach to managing PHP and FPM
pools, as well as code organization. Please provide feedback by filing issues,
discussing in `#salt` in Freenode and the mailing list as normal.

**Note:** php states require the merge parameter of salt.modules.pillar.get(),
first available in the Helium release.

* `php`
* `php.adodb`
* `php.apc`
* `php.apcu`
* `php.cgi`
* `php.cli`
* `php.cli.install`
* `php.cli.ini`
* `php.curl`
* `php.fpm`
* `php.fpm.config`
* `php.fpm.install`
* `php.fpm.pools`
* `php.fpm.pools_config`
* `php.fpm.services`
* `php.gd`
* `php.imagick`
* `php.imap`
* `php.intl`
* `php.json`
* `php.ldap`
* `php.mbstring`
* `php.mcrypt
* `php.memcache`
* `php.memcached`
* `php.mongo`
* `php.mysql`
* `php.mysqlnd`
* `php.pear`
* `php.redis`
* `php.pgsql`
* `php.soap`
* `php.sqlite`
* `php.suhosin`
* `php.xml`

`php`
----------

Installs the php package.

`php.adodb`
----------------

Installs the php-adodb package.

`php.apc`
--------------

Installs the php-apc package.
Disabled on opensuse need server:php repo

`php.apcu`
---------------

Installs the php-apcu package.
Disabled on opensuse need server:php repo

`php.cgi`
--------------

Installs the php-cgi package.
Disabled on opensuse only php5-fastcgi available.

`php.cli`
--------------

Meta-state that combines `php.cli.install` and `php.cli.ini`.

`php.cli.install`
----------------------

Installs the php-cli package.

`php.cli.ini`
------------------

Manages the php-cli ini file.

`php.curl`
---------------

Installs the php5-curl package on Debian, and ensures that curl itself is
installed for RedHat systems, this is due to the curl libs being provided by
php-common, which will get installed with the main php package.

`php.fpm`
--------------

Meta-state that combines all php.fpm states.

`php.fpm.config`
---------------------

Manages the (non-pool) php-fpm config files.


`php.fpm.install`
----------------------

Installs the php-fpm package.


`php.fpm.pools`
--------------------

Meta-state that combines `php.fpm.service`_ and `php.fpm.pools_config`_


`php.fpm.pools_config`
---------------------------

Manages php-fpm pool config files.


`php.fpm.service`
----------------------

Manages the php-fpm service.

`php.gd`
-------------

Installs the php-gd package.


`php.imagick`
------------------

Installs the php-imagick package.
Disabled on opensuse no package.

`php.imap`
---------------

Installs the php-imap package.

`php.intl`
---------------

Installs the php-intl package.

`php.json`
---------------

Installs the php-json package.

`php.ldap`
---------------

Installs the php-ldap package.

`php.mbstring`
-------------------

Installs the php-mbstring package.

`php.mcrypt`
-----------------

Installs the php-mcrypt package.


`php.memcache`
-------------------

Installs the php-memcache package.
Disabled on opensuse need server:php:extensions repo


`php.memcached`
--------------------

Installs the php-memcached package.
Disabled on opensuse need server:php:extensions repo

`php.mongo`
-------------

Installs the php-mongo package.
Disabled on opensuse need server:php:extensions repo


`php.mysql`
----------------

Installs the php-mysql package.

`php.mysqlnd`
------------------

Installs the php-mysqlnd package.
Disabled on opensuse no package.

`php.pear`
---------------

Installs the php-pear package.

`php.redis`
---------------

Installs the php-redis package.
Disabled on opensuse need server:php:extensions repo


`php.pgsql`
----------------

Installs the php-pgsql package.

`php.soap`
---------------

Installs the php-soap package.

`php.sqlite`
-----------------

Installs the php-sqlite package,

`php.suhosin`
------------------

Installs the php-suhosin package.

`php.xml`
--------------

Installs the php-xml package.
