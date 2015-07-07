class projects::netbox::mercurial {

  file { 'dir_dev-tools':
    ensure   => directory,
    path     => '/Users/indika/dev/tools/',
    owner    => 'indika',
    group    => 'staff',
    mode     => 755,
  }

  vcsrepo { "/Users/indika/dev/tools/crecord":
    ensure   => latest,
    provider => hg,
    source   => 'https://bitbucket.org/edgimar/crecord',
    owner    => 'indika',
    group    => 'staff',
  }

  file { '/Users/indika/.hgignore':
    ensure   => link,
    target   => '/Users/indika/dev/config/mercurial/.hgignore',
    owner    => $user,
    group    => 'staff',
    mode     => 644,
    require => Vcsrepo['/Users/indika/dev/config']
  }

  file { '/Users/indika/.hgrc':
    ensure   => link,
    target   => '/Users/indika/dev/config/mercurial/.hgrc',
    owner    => $user,
    group    => 'staff',
    mode     => 644,
    require => Vcsrepo['/Users/indika/dev/config']
  }

}
