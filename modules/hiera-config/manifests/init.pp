# hiera-config: Configures Hiera on the target

class hiera-config {
  file { '/etc/puppet/hiera.yaml':
    source => 'puppet:///modules/hiera-config/hiera.yaml',
    mode => '0644',
    owner => 'root',
    group => 'root',
  }
}