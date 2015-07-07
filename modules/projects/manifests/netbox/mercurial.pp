class projects::netbox::mercurial {

  file { '/Users/indika/.hgrc':
    ensure => present,
    mode => 644,
    source => 'puppet:///modules/projects/dot-hgrc.txt',
    recurse => false,
    owner => 'indika',
    group => 'staff',
  }

# https://bitbucket.org/edgimar/crecord

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


}
