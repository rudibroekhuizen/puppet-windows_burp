# Define: windows_burp::defines::burp
#
define windows_burp::defines::burp (
  $value,
  $section = undef,
  ) {
  
  # Common settings
  Ini_setting {
    ensure         => present,
    path           => "C:/Program Files/Burp/burp.conf",
    section_prefix => '##',
    section_suffix => '',
  }
  
  ini_setting { "C:/Program Files/Burp/burp.conf_${section}":
    setting => $title,
    value   => $value,
    section => $section
  }

}
