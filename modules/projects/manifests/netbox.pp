class projects::netbox {
    include python

    # They end up here
    #/opt/boxen/pyenv/versions

    # I'd rather have Homebrew's version of pyenv
    package { 'pyenv': ensure => "latest" }
    package { 'pyenv-virtualenv': ensure => "latest" }

    #TODO: Upgrade to 2.7.9
    # Watch it: https://github.com/mloberg/puppet-python/tags.atom
    $version2 = '2.7.8'
    python::version { $version2: }

    # Install the latest version of virtualenv
    python::package { "virtualenv for ${version2}":
        package => 'virtualenv',
        python  => $version2,
    }

    $version3 = '3.4.1'
    python::version { $version3: }

    # Install the latest version of virtualenv
    python::package { "virtualenv for ${version3}":
        package => 'virtualenv',
        python  => $version3,
    }


    # Set up the PIP configuration
    file { 'pip_conf_dir':
        ensure   => directory,
        path     => '/Users/indika/.pip',
        owner    => 'indika',
        group    => 'staff',
        mode     => 755,
    }

    file { '/Users/indika/.pip/pip.conf':
        ensure   => present,
        source => 'puppet:///modules/projects/dot-pip-conf.txt',
        owner    => 'indika',
        group    => 'staff',
        mode     => 644,
    require => File['pip_conf_dir']
  }


}