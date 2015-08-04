Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

include cli

file { '/etc/now.conf':
    ensure => 'link',
    target => '/vagrant/vagrant/arch.conf',
}
