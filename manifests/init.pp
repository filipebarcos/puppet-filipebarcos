# Init.pp for sergiobuj

class sergiobuj {
  notice('init.pp for sergiobuj')

  include boxen
  include git

  include preferences
}
