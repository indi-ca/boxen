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

  package { 'Ukelele':
    provider => 'appdmg',
    source   => "http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_2.2.8&filename=Ukelele_2.2.8.dmg",
  }

  #http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_2.2.8&filename=Ukelele_2.2.8.dmg
}