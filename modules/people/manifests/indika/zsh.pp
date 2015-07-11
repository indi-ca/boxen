class people::indika::zsh {

  package { 'zsh': }

  #TODO: THis has to be dependant on the dev directory
  #Or perhaps a basic infrastructure class
  repository { 'oh-my-zsh':
    source   => 'https://github.com/indika/oh-my-zsh.git',
    path     => '/Users/indika/dev/.oh-my-zsh',
    provider => 'git',
  }

  vcsrepo { "/Users/indika/.zprezto":
    ensure     => latest,
    provider   => git,
    source     => 'https://github.com/indika/prezto',
    owner      => 'indika',
    group      => 'staff',
  }

#TODO: I could make architectures a submodule

# # Get prezto's default configuration
# If the symbolic links do not exist
# $ setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done



  #TODO: Learn how to join strings

  # case $::hostname {
  #   'cobalt': {
  #     notice("This is Cobalt. Creating the link.")

  #     file { '/Users/indika/.zshrc':
  #       ensure => 'link',
  #       target => '/Users/indika/.oh-my-zsh/dotzshrcs/dotzshrc_cobalt',
  #       owner => $user,
  #       group => 'staff',
  #       require => Repository['oh-my-zsh'],
  #     }
  #   }

  #   'wings': {
  #     notice("This is Wings. Creating the link.")

  #     file { '/Users/indika/.zshrc':
  #       ensure => 'link',
  #       target => '/Users/indika/.oh-my-zsh/dotzshrcs/dotzshrc_wings',
  #       owner => $user,
  #       group => 'staff',
  #       require => Repository['oh-my-zsh'],
  #     }
  #   }

  #   default: {
  #     #TODO: I should raise an error
  #     notice("Do not know who this is")
  #   }
  # }


  require boxen::config

  file_line { 'add zsh to /etc/shells':
     path    => '/etc/shells',
     line    => "${boxen::config::homebrewdir}/bin/zsh",
     require => Package['zsh'],
  }

  #TODO: This fails because: Invalid resource type
  osx_chsh { $::luser:
    shell   => "${boxen::config::homebrewdir}/bin/zsh",
    require => File_line['add zsh to /etc/shells'],
  }

}
