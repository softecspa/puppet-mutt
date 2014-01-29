class mutt::config($copy=false) 
{

  $set_copy = $copy ? {
    false   =>  'set copy=no',
    true    =>  'set copy=yes',
  }

  file { '/etc/Muttrc.d/softec.rc':
    ensure  =>  present,
    mode    =>  '0644',
    owner   =>  'root',
    group   =>  'root',
    content =>  template('mutt/etc/softec.rc.erb')
  }
}
