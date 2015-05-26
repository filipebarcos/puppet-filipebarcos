# Applications for filipebarcos

class filipebarcos::apps {
  notice("Installing applications for ${::boxen_user}")

  # Brew Cask
  package {
    [
      'caffeine',
      'firefox',
      'flux',
      'google-chrome',
      'iterm2',
      'twitter',
      'spotify',
      'spectacle',
      'clipmenu',
      'vlc',
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }
}
