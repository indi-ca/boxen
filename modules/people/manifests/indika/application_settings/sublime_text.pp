class people::indika::application_settings::sublime_text {

  sublime_text::package { 'SideBarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }

  sublime_text::package { 'SublimePuppet':
    source => 'russCloak/SublimePuppet'
  }


  #TODO: Delete User.git

    # Sublime
    # repository {
    #  'sublime-user':
    #    source   => 'https://github.com/indika/User.git',
    #    path     => '/Users/indika/Library/Application Support/Sublime Text 3/Packages/User',
    #    provider => 'git',
    # }

  file { '/Users/indika/Library/Application Support/Sublime Text 3/Packages/User':
    ensure   => link,
    target   => '/Users/indika/dev/config/sublime/User',
    owner    => 'indika',
    group    => 'staff',
    mode     => 644
  }

  # Sublime Push Bullet
  repository {
   'sublime-push-bullet':
     source   => 'https://github.com/indika/sublime-push-bullet.git',
     path     => '/Users/indika/Library/Application Support/Sublime Text 3/Packages/SublimePushBullet',
     provider => 'git',
  }

}
