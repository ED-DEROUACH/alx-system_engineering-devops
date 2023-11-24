# 1-install_a_package.pp

class { 'python': }

package { 'python3-pip':
  ensure => 'installed',
}

package { 'virtualenv':
  ensure => 'installed',
}

exec { 'create_virtualenv':
  command     => '/usr/bin/virtualenv /opt/venv',
  refreshonly => true,
  creates     => '/opt/venv',
}

exec { 'install_flask':
  command     => '/opt/venv/bin/pip3 install flask==2.1.0',
  refreshonly => true,
  require     => [Package['virtualenv'], Exec['create_virtualenv']],
}

