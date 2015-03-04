# Manages the php cli main ini file
{% from 'php/map.jinja' import php with context %}
{% from "php/ini.jinja" import php_ini %}

{% set settings = php.ini.defaults %}
{% do settings.update(php.cli.ini.settings) %}

php_cli_ini:
  {{ php_ini(php.cli.ini.path, php.cli.ini.opts, settings) }}
