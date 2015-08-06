class people::indika::applications::agda {

#TODO: Rename this

  package { 'Aquamacs':
    provider => 'appdmg',
    source   => 'https://dl.dropboxusercontent.com/u/8261661/resjBlDEvhYB3liuvOX/Aquamacs-Emacs-3.2.dmg',
  }

  file { '/Users/indika/Library/Preferences/Aquamacs Emacs/osxkeys.el':
    ensure   => link,
    target   => '/Users/indika/dev/config/emacs/osxkeys.el',
    owner    => $user,
    group    => 'staff',
    mode     => 644
  }



# source   => 'http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-2.5.dmg',

# http://aquamacs.org/download-release.shtml

# And read this:
# http://wiki.portal.chalmers.se/agda/pmwiki.php?n=Main.MacOSX

}
