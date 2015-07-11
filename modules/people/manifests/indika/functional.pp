class people::indika::functional {

  # include brewcask
  # package { 'haskell-platform': provider => 'brewcask' }

  vcsrepo { "/Users/indika/dev/functional":
    ensure   => present,
    provider => git,
    source   => "https://github.com/indika/functional.git",
    owner    => 'indika',
    group    => 'staff',
  }

}
