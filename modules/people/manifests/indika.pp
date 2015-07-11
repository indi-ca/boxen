class people::indika {

    $computer_name = "${::luser}"

    $host_name = $::hostname

    #TODO: Try to create a notice regarding this variable
    notice("Computer name is ${computer_name}")
    notice("Hostname name is ${host_name}")
    notice("User is ${user}")


    include people::indika::networking
    include people::indika::git_config
    include people::indika::frictionless
    include people::indika::osx_settings
    include people::indika::fonts

    include people::indika::boxen_dev
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


    # This is a bootstrap repo


    vcsrepo { "/Users/indika/dev/config":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/config.git",
      owner    => 'indika',
      group    => 'staff',
    }


    vcsrepo { "/Users/indika/dev/functional":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/functional.git",
      owner    => 'indika',
      group    => 'staff',
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


