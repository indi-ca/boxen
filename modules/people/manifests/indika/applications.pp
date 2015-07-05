class people::indika::applications {

  include sublime_text

  include iterm2::dev
  include iterm2::colors::arthur
  include iterm2::colors::piperita
  include iterm2::colors::saturn
  include iterm2::colors::solarized_dark
  include iterm2::colors::zenburn

  include chrome
  include skype
  # include teamviewer
  # include dropbox
  # include clipmenu
  # include transmission
  # include java
  include firefox
  include vlc
  include spotify
  include xquartz
  # include adobe_reader
  # include people::felho::applications::myphonedesktop
  # include alfred
  # include viscosity
  # include people::felho::applications::battery_time
  # include people::felho::applications::bettertouchtool
  # include people::felho::applications::clipgrab
  include people::indika::applications::spotifree
  include people::indika::applications::rubymine
  # include people::indika::applications::pycharm

  # Handbrake is not mounting correctly
  # include handbrake

  # TODO: Can't get this to work
  # include brewcask
  # package { 'handbrakecli': provider => 'brewcask' }

  # include vagrant

  # Functional dev
  include people::indika::applications::agda

  #TODO: Not defining this in site.pp annoys me so much
  # include nodejs::v0_10
  # class { 'nodejs::global':
  #   version => 'v0.10'
  # }
}
