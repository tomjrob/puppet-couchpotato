class couchpotato::config inherits couchpotato {
#  file { "${config_dir}/config.ini":
#    content => template('couchpotato/config.ini.erb'),
#    owner  => "${user}",
#    group  => "${group}",
#    notify => Exec['cp_stop'],
#    mode    => '0644';
#  }
  
#  exec { "cp_stop":
#    command => 'cp config.ini config.ini.tmp && supervisorctl stop couchpotato & cp config.ini.tmp config.ini',
#    cwd => "${config_dir}",
#    path => "/bin/:/usr/local/bin/",
#    refreshonly => true,
#    }
}