# Class: windows_burp::client
#
class windows_burp::client {

  # Set settings in C:/Program Files/Burp/burp.conf
  create_resources( 'windows_burp::defines::burp', $windows_burp::burp_hash )

  # Set cname as fqdn
  ini_setting { "C:/Program Files/Burp/burp.conf":
    ensure  => present,
    path    => "C:/Program Files/Burp/burp.conf",
    setting => cname,
    value   => $fqdn,
  }

}
