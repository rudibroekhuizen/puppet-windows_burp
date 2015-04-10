# == Class: windows_burp
#
# Full description of class windows_burp here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'windows_burp':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class windows_burp (
  $client                  = true,
  $client_ssl_key_password = "ssl_key_password",
  $client_extra_options    = [ 'ratelimit=10', 'vss_drives=0' ],
  $password                = "password",
  $server_ip               = "172.16.3.13",
  $cname                   = $fqdn,
  $server_can_restore      = "1",
  $includes                = [ '/home', '/var/log' ],
  $excludes                = [ '/home/ubuntu' ],{
) {

  if $operatingsystem == 'Windows' {
    class { 'windows_burp::package': }
  }
  else {
    warning( 'This module only works on Windows. If you are using Linux, try the puppet-burp module.' )
  }

}
