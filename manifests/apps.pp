# Applications for filipebarcos

class filipebarcos::apps {
  notice("Installing applications for ${::boxen_user}")

  # Brew Cask
  package {
    [
      '1password',
      'appcleaner',
      'atom',
      'caffeine',
      'clipmenu',
      'cloudup',
      'dash',
      'dropbox',
      'evernote',
      'firefox',
      'flux',
      'google-chrome',
      'iterm2',
      'omnigraffle',
      'screenhero',
      'skype',
      'spectacle',
      'spotify',
      'telegram',
      'the-unarchiver',
      'vlc'
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }
}
