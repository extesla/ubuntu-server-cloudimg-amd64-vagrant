# Installs libapache2-mod-php5 package and manages the associated php.ini on os Debian
{% if grains['os_family']=="Debian" %}

include:
  - php.apache2.install
  - php.apache2.ini

extend:
  php_apache2_ini:
    file:
      - require:
        - sls: php.apache2.install

{% endif %} #END: os = debian
