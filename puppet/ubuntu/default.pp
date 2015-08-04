Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

include cli
include inifile

file { '/etc/now.conf':
    ensure => 'link',
    target => '/vagrant/vagrant/ubuntu.conf',
}
