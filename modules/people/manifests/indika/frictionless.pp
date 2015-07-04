class people::indika::frictionless {

  vcsrepo { "/Users/indika/dev/frictionless":
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/indika/frictionless.git',
    revision => 'master',
    owner    => 'indika',
    group    => 'staff',
  }

  file { '/Users/indika/Library/Keyboard Layouts/Frictionless.bundle':
    ensure => present,
    mode => 644,
    source => '/Users/indika/dev/frictionless/bin/osx/Frictionless.bundle',
    recurse => true,
    owner => 'indika',
    group => 'staff',
    require => Vcsrepo['/Users/indika/dev/frictionless']
  }
}