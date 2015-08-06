class people::indika::applications::emacs {

  package { 'Aquamacs':
    provider => 'appdmg',
    source   => 'https://dl.dropboxusercontent.com/u/8261661/resjBlDEvhYB3liuvOX/Aquamacs-Emacs-3.2.dmg',
  }


  file { '/Users/indika/.emacs.d/init.el':
    ensure   => link,
    target   => '/Users/indika/dev/config/emacs/init.el',
    owner    => $user,
    group    => 'staff',
    mode     => 644
  }

  vcsrepo { "/Users/indika/.emacs.d/ergoemacs-mode":
    ensure   => latest,
    provider => git,
    depth    => 1,
    source   => 'https://github.com/ergoemacs/ergoemacs-mode.git',
    revision => 'master',
    owner    => 'indika',
    group    => 'staff',
  }



# source   => 'http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-2.5.dmg',

# http://aquamacs.org/download-release.shtml

# And read this:
# http://wiki.portal.chalmers.se/agda/pmwiki.php?n=Main.MacOSX

}
