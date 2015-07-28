class people::indika::fonts {

  include brewcask

  homebrew::tap { 'caskroom/fonts': }

  package { 'font-roboto': provider => 'brewcask' }
  package { 'font-inconsolata': provider => 'brewcask' }
  package { 'font-clear-sans': provider => 'brewcask' }
  package { 'font-m-plus': provider => 'brewcask' }
  package { 'font-source-code-pro': provider => 'brewcask' }

}
