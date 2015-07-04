class people::indika::applications::truecrypt (

  $source = 'https://dl.dropboxusercontent.com/u/8261661/resjBlDEvhYB3liuvOX/TrueCrypt-7.2-Mac-OS-X.dmg',
) {
  package { 'TrueCrypt':
    source   => $source,
    provider => 'pkgdmg',
    require  => Package['osxfuse'],
  }

  if ! defined(Package['osxfuse']) {
    package { 'osxfuse':
      provider => 'homebrew',
    }
  }
}
