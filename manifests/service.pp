class couchpotato::service inherits couchpotato {
  if $service_manage == true {
    supervisor::service { 'couchpotato':
    command        => "${venv_dir}/bin/python ${src_dir}/CouchPotato.py --data_dir=${config_dir} --config=${config_dir}/couchpotato.ini",
    ensure         => present,
    enable         => true,
    stdout_logfile => "${log_dir}/supervisor.log",
    stderr_logfile => "${log_dir}/supervisor.log",
    user           => "${user}",
    group          => "${group}";
    }
    
  # Start Supervisor Inet Service
    ensure_resource("class", "supervisor", {
    "enable_inet_server" => true
    }
    )
  }
}
