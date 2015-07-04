class people::indika::applications::pycharm (
  $version = '4.5',
) {
  package { 'PyCharm':
    provider => 'appdmg',
    source   => "http://download.jetbrains.com/python/pycharm-professional-${version}.dmg",
    owner    => 'indika',
    group    => 'admin',

  }
}

# Need to recursively chown indika:admin

# Now clone the keymap repo, depending on the packaging having been installed
# /Users/indika/Library/Preferences/PyCharm40/keymaps

