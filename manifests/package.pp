# Class: windows_burp::package
#
#
class windows_burp::package {

  case $architecture {
    'x64': { 
      $bit = 'win64'
    }
    'x86': {
      $bit = 'win32'
    }
  }

  download_file { "burp-${bit}-installer-${windows_burp::version}.exe":
    url                   => "http://burp.grke.org/downloads/burp-${windows_burp::version}/burp-${bit}-installer-${windows_burp::version}.exe",
    destination_directory => 'c:/temp'
  }

  package { "burp-${bit}-installer-${windows_burp::version}.exe":
    source          => "c:/temp/burp-${bit}-installer-${windows_burp::version}.exe",
    ensure          => present,
    install_options => ['/S'],
    require         => Download_file [ "burp-${bit}-installer-${windows_burp::version}.exe" ],
  }

}
