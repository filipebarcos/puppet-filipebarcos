# Applications for filipebarcos

class filipebarcos::apps {
  notice("Installing applications for ${::boxen_user}")

  # Brew Cask
  package {
    [
      'appcleaner',
      'caffeine',
      'clipmenu',
      'firefox',
      'flux',
      'google-chrome',
      'iterm2',
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
