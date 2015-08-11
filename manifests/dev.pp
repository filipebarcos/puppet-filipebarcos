class filipebarcos::dev {
  notice("Setting up dev stuff for ${::boxen_user}")

  package {
    [
      'vim',
      'tmux',
      'reattach-to-user-namespace',
      'tig',
      'grc',
      'coreutils',
      'spark',
      'libxml2',
      'the_silver_searcher',
      'ctags-exuberant',
      'wget',
      'hub'
    ]:
    ensure => present
  }

  $home     = "/Users/${::boxen_user}"

  file { "${home}/tmp":
    ensure => directory
  }
}
