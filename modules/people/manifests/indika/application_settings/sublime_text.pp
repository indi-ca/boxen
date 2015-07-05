class people::indika::application_settings::sublime_text {
  sublime_text::package { 'SideBarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }

  file { '/Users/indika/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap':
    ensure => present,
    mode => 644,
    source => 'puppet:///modules/people/sublime_user_keymap.json',
    owner => 'indika',
    group => 'staff',
  }

  file { '/Users/indika/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings':
    ensure => present,
    mode => 644,
    source => 'puppet:///modules/people/sublime_user_preferences.json',
    owner => 'indika',
    group => 'staff',
  }

}
