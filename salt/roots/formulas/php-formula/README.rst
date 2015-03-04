php-formula
===========

This is a derivative formula, based off of the Salt Stack official `php-formula<https://github.com/saltstack-formulas/php-formula>`_. It uses the next-generation model of states, as described by Salt Stack's formula as the default (and only) set of states available.

Formulas to set up and configure php and various php libraries.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

The following states provide an alternate approach to managing PHP and FPM
pools, as well as code organization. Please provide feedback by filing issues,
discussing in ``#salt`` in Freenode and the mailing list as normal.

**Note:** php states require the merge parameter of salt.modules.pillar.get(),
first available in the Helium release.

.. contents::
    :local:

``php``
----------

Installs the php package; this will also install apache2 with the PHP modules enabled.

``php.adodb``
----------------

Installs the php-adodb package.

``php.apc``
--------------

Installs the php-apc package.

``php.cgi``
--------------

Installs the php-cgi package.

``php.cli``
--------------

Meta-state that combines `php.cli.install`_ and `php.cli.ini`_.

``php.cli.install``
----------------------

Installs the php-cli package.

``php.cli.ini``
------------------

Manages the php-cli ini file.

``php.curl``
---------------

Installs the php5-curl package on Debian, and ensures that curl itself is
installed for RedHat systems, this is due to the curl libs being provided by
php-common, which will get installed with the main php package.

``php.fpm``
--------------

Meta-state that combines all php.fpm states.

``php.fpm.config``
---------------------

Manages the (non-pool) php-fpm config files.


``php.fpm.install``
----------------------

Installs the php-fpm package.


``php.fpm.pools``
--------------------

Meta-state that combines `php.fpm.service`_ and `php.fpm.pools_config`_


``php.fpm.pools_config``
---------------------------

Manages php-fpm pool config files.


``php.fpm.service``
----------------------

Manages the php-fpm service.

``php.gd``
-------------

Installs the php-gd package.


``php.imagick``
------------------

Installs the php-imagick package.

``php.imap``
---------------

Installs the php-imap package.

``php.intl``
---------------

Installs the php-intl package.

``php.json``
---------------

Installs the php-json package.

``php.ldap``
---------------

Installs the php-ldap package.

``php.mbstring``
-------------------

Installs the php-mbstring package.

``php.mcrypt``
-----------------

Installs the php-mcrypt package.


``php.memcache``
-------------------

Installs the php-memcache package.

``php.memcached``
--------------------

Installs the php-memcached package.

``php.mysql``
----------------

Installs the php-mysql package.

``php.mysqlnd``
------------------

Installs the php-mysqlnd package.

``php.pear``
---------------

Installs the php-pear package.

``php.redis``
---------------

Installs the php-redis package.

``php.pgsql``
----------------

Installs the php-pgsql package.

``php.soap``
---------------

Installs the php-soap package.

``php.suhosin``
------------------

Installs the php-suhosin package.

``php.xml``
--------------

Installs the php-xml package.
