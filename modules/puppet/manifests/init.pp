class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode => '0755',
  }
  
  file { '/usr/local/bin/pull-updates':
    source => 'puppet:///modules/puppet/pull-updates.sh',
    mode => '0755',
  }
  
  file { '/etc/sudoers.d/puppet':
    source => 'puppet:///modules/puppet/puppet.sudoer',
    mode => '0440',
    owner => 'root',
    group => 'root',
  }
  
  file { '/var/lib/puppet':
    recurse => true,
    owner => 'puppet',
    group => 'puppet',
  }
}
