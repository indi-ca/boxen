class people::indika::boxen_dev {

    # Root directory
    file { 'dir_osx-boxen':
      ensure   => directory,
      path     => '/Users/indika/dev/osx-boxen/',
      owner    => 'indika',
      group    => 'staff',
      mode     => 755, #TODO: Find out what this should be,
    }

    # Github's Boxen
    vcsrepo { "/Users/indika/dev/osx-boxen/their-boxen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/boxen/our-boxen",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # Felho's Boxen
    vcsrepo { "/Users/indika/dev/osx-boxen/felho-boxen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/felho/boxen.git",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # This is a module that I'm developing
    # It's kindof empty
    # TODO: Consider deleting this and sourcing upstream
    vcsrepo { "/Users/indika/dev/osx-boxen/puppet-virtualenv":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/puppet-virtualenv.git",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

}
