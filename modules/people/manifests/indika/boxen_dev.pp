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
}
