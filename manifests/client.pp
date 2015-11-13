# Class: windows_burp::client
#
class windows_burp::client {

  $burp_hash_defaults = { 'path'           => 'C:/Program Files/Burp/burp.conf',
                          'section_prefix' => '#['
            	          },

  # Set settings in C:/Program Files/Burp/burp.conf
  create_ini_settings($windows_burp::burp_hash, $burp_hash_defaults)

  # Set cname as fqdn
  ini_setting { 'C:/Program Files/Burp/burp.conf':
    ensure  => present,
    path    => 'C:/Program Files/Burp/burp.conf',
    setting => cname,
    value   => $::fqdn,
  }

}
