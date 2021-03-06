class profile::blog {
  class { 'apache': 
    docroot => '/var/www',  
  }
  class { 'apache::mod::php': }
  
  class { 'mysql::server':
    root_password => 'strongpassword',
  }
  
  class { 'mysql::bindings':
    php_enable => true,
  }
  
  class { 'wordpress':
    install_dir => '/var/www',
  }
  
}
