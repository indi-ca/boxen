class people::indika {

    $computer_name = "${::luser}"

    $host_name = $::hostname

#TODO: Try to create a notice regarding this variable
    notice("Computer name is ${computer_name}")
    notice("Hostname name is ${host_name}")
    notice("User is ${user}")


    include people::indika::networking
    include people::indika::frictionless
    include people::indika::osx_settings
    include people::indika::applications
    include people::indika::application_settings
    include people::indika::homebrew_packages
    include people::indika::zsh
    include projects::netbox

    #include projects::truecrypt

    #
    # Remove services we don't want
    #
    # service {"dev.nginx":
    #     ensure => "stopped",
    # }

    # service {"dev.dnsmasq":
    #     ensure => "stopped",
    # }


    vcsrepo { "/Users/indika/dev/functional":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/functional.git",
    }


    # The problem with vcsrepo, is that it creates files as root
    file { 'dir_boxen-learn':
      ensure   => directory,
      path     => '/Users/indika/dev/boxen-learn/',
      owner    => 'indika',
      group    => 'staff',
      mode     => 755, #TODO: Find out what this should be,
    }

    repository { 'their-boxen':
        source   => 'https://github.com/boxen/our-boxen',
        path     => '/Users/indika/dev/boxen-learn/their-boxen',
        provider => 'git',
        require  => File['dir_boxen-learn']
    }

    # The problem with vcsrepo, is that it creates files as root
    vcsrepo { "/Users/indika/dev/boxen-learn/felho-boxen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/felho/boxen.git",
      depth    => 1,
      require  => File['dir_boxen-learn']
    }
    file { 'dir_boxen-learn_felho-boxen':
      ensure  => directory,
      path    => '/Users/indika/dev/boxen-learn/felho-boxen',
      owner   => 'indika',
      group   => 'staff',
      mode    => 755, #TODO: Find out what this should be,
      require => Vcsrepo['/Users/indika/dev/boxen-learn/felho-boxen']
    }

    repository { 'puppet-virtualenv':
      source   => 'git://github.com/indika/puppet-virtualenv.git',
      path     => '/Users/indika/dev/boxen-learn/puppet-virtualenv',
      provider => 'git',
      require  => File['dir_boxen-learn']
    }

    # Sublime
    # repository {
    #  'sublime-user':
    #    source   => 'https://github.com/indika/User.git',
    #    path     => '/Users/indika/Library/Application Support/Sublime Text 3/Packages/User',
    #    provider => 'git',
    # }


    # Sublime Push Bullet
    repository {
     'sublime-push-bullet':
       source   => 'https://github.com/indika/sublime-push-bullet.git',
       path     => '/Users/indika/Library/Application Support/Sublime Text 3/Packages/SublimePushBullet',
       provider => 'git',
    }
}


