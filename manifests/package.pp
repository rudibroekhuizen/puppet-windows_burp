Class: windows_burp::package
#
#
class windows_burp::package {

  if $::operatingsystem != 'Windows' {
    notice( 'This module is designed for Windows, for Linux please user module puppet module puppet-burp.' )
  }
