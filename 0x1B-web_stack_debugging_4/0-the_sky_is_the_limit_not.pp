# Puppet Manifest to Optimize Nginx for Handling High Traffic

# Description:
# This manifest increases the capacity of the Nginx web server
# to handle a higher volume of concurrent connections.

# Puppet Lint:
# This manifest has been written to comply with
# Puppet Lint version 2.1.1 without errors.

# Puppet Version:
# This manifest is intended for use with Puppet v3.4.

# Ensure that all files have a new line at the end.
file { '/etc/default/nginx':
  ensure  => present,
  content => template('module/nginx_config.erb'),
  require => Class['nginx'],
}

# Restart Nginx after updating the ulimit
exec { 'nginx-restart':
  command     => 'service nginx restart',
  path        => '/etc/init.d/',
  refreshonly => true,  # Only run when the 'file' resource above changes
}
