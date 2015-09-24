class projects::tutorials {

  vcsrepo { "/Users/indika/dev/tutorials/opeleye":
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/benkolera/talk-opaleye',
    revision => 'master',
    owner    => 'indika',
    group    => 'staff',
  }

}
