class mutt($copy=false) {
  validate_bool($copy)

  include mutt::install
  
  class {'mutt::config':
      copy => $copy,
  }
  
  Class['mutt::install'] -> Class['mutt::config']
}
