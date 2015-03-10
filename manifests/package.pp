# Class: windows_burp::package
#
#
class windows_burp::package {

  case $architecture {
    'x64': { 
      $bit = 'win64'
    }
    '32': {
      $bit = 'win32'
    }
  }

  download_file { "burp-${bit}-installer-1.4.32.exe":
    url                   => 'http://downloads.sourceforge.net/project/burp/burp-1.4.32/burp-${bit}-installer-1.4.32.exe',
    destination_directory => 'c:\temp'
  }

  package { 'burp':
    source  => 'c:\temp\burp-${bit}-installer-1.4.32.exe',
    ensure  => present,
    install_options => ['/S'],
    require => Download_file [ 'burp-${bit}-installer-1.4.32.exe' ],
  }

}
