class people::indika::zsh {

  package { 'zsh': }

  repository { 'oh-my-zsh':
    source   => 'git://github.com/indika/oh-my-zsh.git',
    path     => '/Users/indika/.oh-my-zsh',
    provider => 'git',
  }

  #TODO: Learn how to join strings

  case $::hostname {
    'cobalt': {
      notice("This is Cobalt. Creating the link.")

      file { '/Users/indika/.zshrc':
        ensure => 'link',
        target => '/Users/indika/.oh-my-zsh/dotzshrcs/dotzshrc_cobalt',
        owner => $user,
        group => 'staff',
        require => Repository['oh-my-zsh'],
      }
    }

    'wings': {
      notice("This is Wings. Creating the link.")

      file { '/Users/indika/.zshrc':
        ensure => 'link',
        target => '/Users/indika/.oh-my-zsh/dotzshrcs/dotzshrc_wings',
        owner => $user,
        group => 'staff',
        require => Repository['oh-my-zsh'],
      }
    }

    default: {
      #TODO: I should raise an error
      notice("Do not know who this is")
    }
  }


  require boxen::config

  file_line { 'add zsh to /etc/shells':
     path    => '/etc/shells',
     line    => "${boxen::config::homebrewdir}/bin/zsh",
     require => Package['zsh'],
  }

  #TODO: This fails because: Invalid resource type
  #osx_chsh { $::luser:
  #   shell   => "${boxen::config::homebrewdir}/bin/zsh",
  #   require => File_line['add zsh to /etc/shells'],
  #}

}
