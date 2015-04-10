# Class: windows_burp::client
#
#
class windows_burp::client {

  # Configure burp.conf client config file
  file { 'C:/Program Files/Burp/burp.conf':
    ensure  => present,
    content => template("burp/burp.conf.erb"),
    require => Class['windows_burp::package']
  }

}
