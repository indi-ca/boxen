class people::indika::boxen_dev {

    $boxen_dev_dir = "/Users/${::boxen_user}/dev/osx-boxen"

    # Root directory
    file { 'dir_osx-boxen':
      ensure   => directory,
      path     => $boxen_dev_dir,
      owner    => 'indika',
      group    => 'staff',
      mode     => 755, #TODO: Find out what this should be,
    }

    # Github's Boxen
    vcsrepo { "${boxen_dev_dir}/their-boxen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/boxen/our-boxen",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # Felho's Boxen
    vcsrepo { "${boxen_dev_dir}/felho-boxen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/felho/boxen.git",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # This is a module that I'm developing. It's kindof empty
    vcsrepo { "${boxen_dev_dir}/puppet-virtualenv":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/puppet-virtualenv.git",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # This might teach me how to backup my configuration
    vcsrepo { "${boxen_dev_dir}/mackup":
      ensure   => present,
      provider => git,
      source   => "https://github.com/lra/mackup",
      depth    => 1,
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

    # My kitchen
    vcsrepo { "${boxen_dev_dir}/kitchen":
      ensure   => present,
      provider => git,
      source   => "https://github.com/indika/kitchen",
      owner    => 'indika',
      group    => 'staff',
      require  => File['dir_osx-boxen']
    }

}
