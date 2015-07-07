class people::indika::applications::limechat(
  $url_base = 'http://downloads.sourceforge.net/project/limechat/limechat',
  $version = '2.42',
){
  package { 'LimeChat':
    provider => 'compressed_app',
    source   => "${url_base}/LimeChat_${$version}.tbz",
  }
}
