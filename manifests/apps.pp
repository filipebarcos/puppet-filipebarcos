# Applications for filipebarcos

class filipebarcos::apps {
  notice("Installing applications for ${::boxen_user}")

  # Brew Cask
  package {
    [
      'appcleaner',
      'atom',
      'caffeine',
      'clipmenu',
      'cloudup',
      'dash',
      'evernote',
      'firefox',
      'flux',
      'google-chrome',
      'iterm2',
      'screenhero',
      'spectacle',
      'spotify',
      'telegram',
      'vlc',
      'whiskey'
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }
}
