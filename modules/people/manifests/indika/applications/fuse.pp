class people::indika::applications::fuse(
  $version = '2.7.4',
){

  package { 'OSXFuse':
    source   => "http://downloads.sourceforge.net/project/osxfuse/osxfuse-${version}/osxfuse-${version}.dmg",
    provider => 'pkgdmg'
  }
}
