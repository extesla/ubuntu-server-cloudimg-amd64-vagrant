# Manages the php-fpm main ini file
{% from 'php/map.jinja' import php with context %}
{% from "php/ini.jinja" import php_ini %}

{% set ini_settings = php.ini.defaults %}
{% do ini_settings.update(php.fpm.config.ini.settings) %}

{% set conf_settings = php.fpm.defaults %}
{% do conf_settings.update(php.fpm.config.conf.settings) %}

php_fpm_ini_config:
  {{ php_ini(php.fpm.config.ini.path, php.fpm.config.ini.opts, ini_settings) }}

php_fpm_conf_config:
  {{ php_ini(php.fpm.config.conf.path, php.fpm.config.conf.opts, conf_settings) }}
