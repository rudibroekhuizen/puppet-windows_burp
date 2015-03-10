Class: windows_burp::package
#
#
class windows_burp::package {

  download_file { "burp-win64-installer-1.4.32.exe":
    url                   => 'http://downloads.sourceforge.net/project/burp/burp-1.4.32/burp-win64-installer-1.4.32.exe?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fburp%2Ffiles%2Fburp-1.4.32%2Fburp-win64-installer-1.4.32.exe%2Fdownload&ts=1426007464&use_mirror=softlayer-ams',
    destination_directory => 'c:/temp'
  }

}
