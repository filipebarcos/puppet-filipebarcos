# Preferences for filipebarcos
class filipebarcos::preferences {
  notice('Setting up osx preferences for filipebarcos')
  include sourcecodepro
  include osx::keyboard::capslock_to_control

  exec { 'creating tmp folder'
    command => 'mkdir tmp',
    cwd     => "/Users/${::boxen_user}"
  }
}

