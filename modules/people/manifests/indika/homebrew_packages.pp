#
# These packages will also be installed via Homebrew
#

class people::indika::homebrew_packages {

    package {
      [
        'ag',       # The silver searcher
        'fdupes',   # File duplicates
        'gradle',
        'hub',
        'mtr',
        'pass',
        'pstree',
        'rdesktop',
        'tree',
        'watch',
        'wget',
      ]:
    }

}
