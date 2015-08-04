class cli
{
    file { '/bin/now':
        ensure => 'link',
        target => '/vagrant/now/cli.rb',
    }
}
