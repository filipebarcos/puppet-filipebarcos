# Preferences for filipebarcos
class filipebarcos::preferences {
  notice('Setting up osx preferences for filipebarcos')
  include sourcecodepro
  include osx::dock::autohide
  include osx::global::disable_autocorrect
  include osx::global::expand_save_dialog
  include osx::global::key_repeat_rate
  include osx::finder::show_all_on_desktop
  include osx::finder::enable_quicklook_text_selection
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }

  class { 'osx::global::key_repeat_delay':
    delay => 0
  }

  class { 'osx::dock::position':
    position => 'left'
  }
}
