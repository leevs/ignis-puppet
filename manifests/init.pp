class puppet {
  file {'/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode => '0755',
  }
  
  
  file {'/usr/local/bin/pull-updates':
    source => 'puppet:///modules/puppet/ppull-updates.sh',
    mode => '0755',
  }
  
  file {'home/puppet/.shh/id_rsa':
    source => 'puppet:///modules/puppet/puppet.priv',
    mode => '0600',
    owner => 'puppet',
  }
  
  cron {'run-puppet':
    ensure => 'present',
    command => '/usr/local/bin/pull-updates',
    minute => '*10',
    hour => '*',
  }
}

class hosts {
    file { '/etc/hosts':
      ensure => file,
      source => 'puppet:///files/hosts'
      owner => 'root'
    }
}