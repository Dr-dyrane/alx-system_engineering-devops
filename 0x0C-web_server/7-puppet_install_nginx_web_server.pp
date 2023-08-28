# Puppet Manifest: 7-puppet_install_nginx_web_server.pp
###############################################################################
#
# Description: Puppet manifest to install and configure Nginx web server on an
# Ubuntu machine and include resources for a 301 redirect.
#
# Author: Alexander Udeogaranya
# GitHub: 
#  - https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0C-web_server
#
# Requirements:
#   - Nginx should be listening on port 80.
#   - When querying Nginx at its root / with a GET request, it must return a
#     page that contains the string "Hello World!"
#   - The redirection must be a “301 Moved Permanently” for /redirect_me.
#
# Usage: sudo puppet apply 7-puppet_install_nginx_web_server.pp
#
# This manifest will configure Nginx and include a resource for a 301 redirect.
#
# Note: Make sure to run Puppet with appropriate privileges (sudo) to apply
#       this manifest.
###############################################################################

class nginx_install {
  # Install the Nginx package
  package { 'nginx':
    ensure => 'installed',
  }

  # Create an index.html file with "Hello World!" content
  file { '/var/www/html/index.html':
    ensure  => 'present',
    content => 'Hello World!',
  }

  # Configure a 301 redirect for /redirect_me
  file_line { 'nginx_redirect':
    ensure => 'present',
    path   => '/etc/nginx/sites-available/default',
    after  => 'listen 80 default_server;',
    line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  }

  # Ensure Nginx service is running and enabled
  service { 'nginx':
    ensure  => 'running',
    enable  => true,
    require => Package['nginx'],
  }
}

# Include the nginx_install class to apply the configuration
include nginx_install
