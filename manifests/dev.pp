class filipebarcos::dev {
  notice("Setting up dev stuff for ${::boxen_user}")

  package {
    [
      'tmux',
      'reattach-to-user-namespace',
      'tig',
      'grc',
      'coreutils',
      'spark',
      'libxml2',
      'the_silver_searcher',
      'ctags-exuberant',
      'wget'
    ]:
    ensure => present
  }
}
