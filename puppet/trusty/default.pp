file { '/usr/local/bin/now':
    ensure => 'link',
    target => '/vagrant/bin/debian-pre-systemd.sh',
}
