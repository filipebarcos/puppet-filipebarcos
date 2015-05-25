# Include everything for filipebarcos

class filipebarcos::all {
  notice('Setting up filipebarcos')

  include filipebarcos::apps
  include filipebarcos::dev
  include filipebarcos::dotfiles
  include filipebarcos::preferences

}
