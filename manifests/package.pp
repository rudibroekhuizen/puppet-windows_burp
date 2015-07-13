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

  download_file { "burp-${bit}-installer-1.4.32.exe":
    url                   => "http://burp.grke.org/downloads/burp-1.4.38/burp-${bit}-installer-1.4.38.exe",
    destination_directory => 'c:/temp'
  }

  package { "burp-${bit}-installer-1.4.32.exe":
    source          => "c:/temp/burp-${bit}-installer-1.4.38.exe",
    ensure          => present,
    install_options => ['/S'],
    require         => Download_file [ "burp-${bit}-installer-1.4.38.exe" ],
  }

}
