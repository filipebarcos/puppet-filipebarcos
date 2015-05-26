# Dotfiles for filipebarcos

class filipebarcos::dotfiles {
  notice('Setting up dotfiles for filipebarcos')

  include zsh

  $home     = "/Users/${::boxen_user}"
  $dotfiles = "${src}/.dotfiles"

  file { $dotfiles:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'filipebarcos/dotfiles',
    require => File[$dotfiles]
  }

  exec { 'install osx preferences':
    command => 'sh script/install',
    cwd     => $dotfiles
  }

  exec { 'bootstraping dotfiles':
    command => 'sh script/bootstrap',
    cwd     => $dotfiles
  }

  exec { 'pull dotfiles master':
    command => 'git pull origin master',
    cwd     => $dotfiles
  }
}

