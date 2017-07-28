#Create new module; initially a syntax template as shown first ##### 
class users {
  user { 'fundamentals':
    ensure => present,
    uid    => '1003',
    shell  => '/bin/sh'
  }  
}
