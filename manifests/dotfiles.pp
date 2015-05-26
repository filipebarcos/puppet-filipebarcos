# Dotfiles for filipebarcos

class filipebarcos::dotfiles {
  notice('Setting up dotfiles for filipebarcos')

  include zsh

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${home}/.dotfiles"

  file { $dotfiles:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'filipebarcos/dotfiles',
    require => File[$dotfiles]
  }

  exec { 'installing dotfiles':
    command => 'sh script/boxen_install',
    cwd     => $dotfiles
  }

  exec { 'pull dotfiles master':
    command => 'git pull origin master',
    cwd     => $dotfiles
  }
}

