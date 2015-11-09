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
  $version   = '1.4.38',
  $burp_hash_defaults = { 'path'           => 'C:/Program Files/Burp/burp.conf'
                          'section_prefix' => '#[',
	            	},
  $burp_hash = { 'server'             => { value => '172.16.1.1',
                                         },
                 'ssl_key_password'   => { value => 'password',
                                         },
                 'password'           => { value => 'password',
                                         },
                 'server_can_restore' => { value => '1',
                                         },
                 'include'            => { value   => 'C:/Program Files/Burp/burp.conf',
                                           section => 'C:/Program Files/Burp/burp.conf',
                                         },
                 'include'            => { value   => 'C:/Documents and Settings',
                                           section => 'C:/Documents and Settings',
                                         },
               },
) {

  if $operatingsystem == 'Windows' {
    class { 'windows_burp::package':
    } 
    class { 'windows_burp::client': 
      require => Class['windows_burp::package']
    }
  }
  else {
    warning( 'This module only works on Windows. If you are using Linux, try the puppet-burp module.' )
  }

}
