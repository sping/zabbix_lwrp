name             'zabbix_lwrp'
maintainer       'LLC Express 42'
maintainer_email 'cookbooks@express42.com'
license          'MIT'
description      'Installs and configures Zabbix agent and server with PostgreSQL and Nginx. Provides LWRP for creating and modifying Zabbix objects.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.10'

depends          'apt'
depends          'build-essential'
depends          'lvm'
depends          'nginx'
depends          'postgresql_lwrp'
depends          'php-fpm'

recipe           'zabbix_lwrp::agent', 'Installs and configures Zabbix agent.'
recipe           'zabbix_lwrp::connect', 'Connects to Zabbix API to sync configuration.'
recipe           'zabbix_lwrp::default', 'Installs and configures Zabbix official repository and agent.'
recipe           'zabbix_lwrp::database', 'Installs and configures Zabbix database.'
recipe           'zabbix_lwrp::host', 'Creates host via Zabbix API.'
recipe           'zabbix_lwrp::partition', 'Configures LVM for Zabbix database.'
recipe           'zabbix_lwrp::repository', 'Installs Zabbix official repository.'
recipe           'zabbix_lwrp::server', 'Installs and configures Zabbix server.'
recipe           'zabbix_lwrp::web', 'Installs and configures Zabbix frontend.'

supports         'ubuntu'
