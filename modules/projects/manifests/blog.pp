class projects::blog {

  file { 'dir_blog':
    ensure   => directory,
    path     => '/Users/indika/dev/blog',
    owner    => 'indika',
    group    => 'staff',
    mode     => 755,#
  }


  # ensure a certain ruby version is used in a dir
  ruby::local { '/Users/indika/dev/blog':
    version => '2.2.2',
    require => File['dir_blog']
  }

  # ensure a gem is installed for a certain ruby version
  # note, you can't have duplicate resource names so you have to name like so
  $version = "2.2.2"
  ruby_gem { "jekyll for ${version}":
    gem          => 'jekyll',
    ruby_version => $version,
  }

}
