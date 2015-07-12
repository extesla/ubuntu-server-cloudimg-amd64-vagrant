{% from "php/map.jinja"  import php with context %}
{% set version = salt['pillar.get']('php:mongo:version', none) %}

include:
  - php.dev
  - php.pear

pecl_install_mongo:
  pecl.installed:
    - name: {{ php.mongo.name }}
    - defaults: True
{% if version is not none %}
    - version: {{ version }}
{% endif %}
    - require:
      - pkg: php_install_pear
# {{ php.lookup.pkgs.pear }}

php-mongo-conf:
  file.managed:
    - name: {{ php.ext_conf_path }}/mongo.ini
    - user: root
    - group: root
    - mode: 644
    - contents: |
        extension={{ php.mongo.ext }}


/etc/php5/cli/conf.d/20-mongo.ini:
  file.symlink:
    - target: {{ php.ext_conf_path }}/mongo.ini
