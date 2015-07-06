#
# These packages will also be installed via Homebrew
#

class people::indika::homebrew_packages {

    homebrew::tap { 'homebrew/x11': }

    package {
      [
        'ag',       # The silver searcher
        'fdupes',   # File duplicates
        'gradle',
        'hub',
        'mtr',
        'pass',
        'pstree',
        'rdesktop',       # This does not work
        'tree',
        'watch',
        'wget',
      ]:
    }

}