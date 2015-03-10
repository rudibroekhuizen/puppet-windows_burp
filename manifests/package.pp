# Class: windows_burp::package
#
#
class windows_burp::package {

  download_file { "burp-win64-installer-1.4.32.exe":
    url                   => 'http://downloads.sourceforge.net/project/burp/burp-1.4.32/burp-win64-installer-1.4.32.exe',
    destination_directory => 'c:\temp'
  }

}
