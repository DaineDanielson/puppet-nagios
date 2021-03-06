# == Class: nagios::server::package
#
# This is going to install the nagios3 package.
#
# === Authors
#
# Ben Field <ben.field@concreteplatform.com>
class nagios::server::package {
  include nagios::folders

  package { 'nagios3':
    ensure => installed,
    before => File['/usr/lib/nagios/eventhandlers']
  }

}
