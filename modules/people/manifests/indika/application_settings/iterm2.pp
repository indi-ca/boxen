class people::indika::application_settings::iterm2 {
  boxen::osx_defaults { 'Turn off prompt on quit':
    user   => $::luser,
    domain => 'com.googlecode.iterm2',
    key    => 'PromptOnQuit',
    type   => 'bool',
    value  => false,
  }
}
