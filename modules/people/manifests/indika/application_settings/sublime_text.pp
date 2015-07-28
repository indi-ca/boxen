class people::indika::application_settings::sublime_text {


  # Reconstructing Sublime
  # Delete Sublime, and delete $CONFIG_SUBLIME
  # Don't install puppet
  # Check out functional.pp

  #TODO: Add requirements to package?
  #Looks interesting: https://github.com/geovanisouza92/Pushb/blob/master/pushb.py
  #TODO: Delete https://github.com/indika/User.git after sufficient time

  # Setup package control
  # import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

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

#  sublime_text::package { 'Predawn':
#    source => '?ai'
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
