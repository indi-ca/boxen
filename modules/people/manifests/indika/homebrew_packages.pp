#
# These packages will be installed via Homebrew
#

class people::indika::homebrew_packages {

    homebrew::tap { 'homebrew/x11': }

    package {
      [
        'ag',               # The silver searcher
        'fdupes',           # File duplicates
        'gradle',
        'fasd',             # On probation
        'fswatch',          # FileSystem watch
        'hub',
        'mobile-shell',
        'mtr',
        'pass',
        'pstree',
        'rdesktop',
        'task',             # Task Warrior
        'terminal-notifier',
        'tree',
        'youtube-dl',
        'watch',
        'wget',
      ]:
    }

}
