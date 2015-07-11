class people::indika::application_settings::sublime_text {

  #TODO: Add requirements to package?
  #Looks interesting: https://github.com/geovanisouza92/Pushb/blob/master/pushb.py
  #TODO: Delete https://github.com/indika/User.git after sufficient time

#  sublime_text::package { 'BracketHighlighter':
#    source => 'facelessuser/BracketHighlighter'
#  }

#  sublime_text::package { 'Git':
#    source => 'kemayo/sublime-text-2-git'
#  }

#  sublime_text::package { 'HTML-CSS-JS Prettify':
#    source => 'victorporof/Sublime-HTMLPrettify'
#  }

#  sublime_text::package { 'Keymaps':
#    source => 'MiroHibler/sublime-keymaps'
#  }

#  sublime_text::package { 'SideBarEnhancements':
#    source => 'titoBouzout/SideBarEnhancements'
#  }

#  sublime_text::package { 'SublimePuppet':
#    source => 'russCloak/SublimePuppet'
#  }

#  sublime_text::package { 'SodaTheme':
#    source => 'buymeasoda/soda-theme'
#  }

  $sublime_home = "/Users/${::boxen_user}/Library/Application Support/Sublime Text 3"

  file { "${sublime_home}/Packages/User":
     ensure   => link,
     target   => '/Users/indika/dev/config/sublime/User',
     owner    => 'indika',
     group    => 'staff',
     force    => 'true',
     mode     => 700,

  #   # TODO: Need to make it dependant on config as well
  #   # require => Package['Sublime_text'],
   }

  # # Sublime Push Bullet
  # repository { 'sublime-push-bullet':
  #    source   => 'https://github.com/indika/sublime-push-bullet.git',
  #    path     => "${sublime_home}/Packages/SublimePushBullet",
  #    provider => 'git',
  # }

}
