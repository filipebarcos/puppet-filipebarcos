# Preferences for filipebarcos
class filipebarcos::preferences {
  notice('Setting up osx preferences for filipebarcos')
  include sourcecodepro

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_autocorrect

  include osx::dock::autohide

  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::safari::enable_developer_mode

  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }

  class { 'osx::global::key_repeat_rate':
    rate => 0
  }

  class { 'osx::global::key_repeat_delay':
    delay => 8
  }

  class { 'osx::dock::position':
    position => 'left'
  }
}
