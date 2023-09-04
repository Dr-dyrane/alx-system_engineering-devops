# Puppet Manifest: 2-puppet_custom_http_response_header.pp
###############################################################################
# This Puppet manifest installs and configures an Nginx server with a custom HTTP response header.
# The custom header name is X-Served-By, and its value is set to the hostname of the server Nginx is running on.
#
# Requirements:
# - Install Nginx.
# - Configure Nginx to include the custom header.
# - Ensure that the custom header value is set to the server's hostname.
#
# Usage:
# - Apply this manifest on a brand new Ubuntu machine to meet the task requirements.
#
# Example:
# $ puppet apply 2-puppet_custom_http_response_header.pp
###############################################################################

# Update the package list
exec { 'update':
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}

# Install Nginx
exec { 'install Nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['add_header'],
}

# Add the custom HTTP header to the Nginx configuration
exec { 'add_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart Nginx'],
}

# Restart the Nginx service to apply the configuration
exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
