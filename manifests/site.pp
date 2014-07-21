$allow_virtual_packages = hiera('allow_virtual_packages',false)
Package {
  allow_virtual => $allow_virtual_packages,
}

node baselinux {
  include puppet
  include hiera-config
  include stdlib
  include firewall-default-config
}

node baseosx {
}

node basewindows {
}

node debianbaselinux inherits baselinux {
  include apt
}

node susebaselinux inherits baselinux {
  include epel
}

node fedorabaselinux inherits baselinux {
}