file { '/usr/local/bin/now':
    ensure => 'link',
    target => '/vagrant/bin/arch.sh',
}
