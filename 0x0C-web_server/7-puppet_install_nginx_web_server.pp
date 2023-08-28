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

class nginx_redirect {
    # Install the Nginx package
    package { 'nginx':
        ensure => 'installed',
    }

    # Ensure Nginx service is running and enabled
    service { 'nginx':
        ensure    => 'running',
        enable    => true,
        hasstatus => true,
    }

    # Create an index.html file with "Hello World!" content
    file { '/var/www/html/index.html':
        ensure  => 'present',
        content => "Hello World!\n",
    }

    # Configure Nginx site for the root URL (/)
    file { '/etc/nginx/sites-available/default':
        ensure  => 'present',
        content => "server {
            listen 80 default_server;
            server_name _;

            location / {
                add_header Content-Type text/plain;
                return 200 'Hello World!';
            }

            location /redirect_me {
                return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
            }
        }",
        require => Package['nginx'],
    }

    # Enable the default Nginx site
    file { '/etc/nginx/sites-enabled/default':
        ensure  => 'link',
        target  => '/etc/nginx/sites-available/default',
        require => File['/etc/nginx/sites-available/default'],
    }

    # Reload Nginx to apply the configuration changes
    exec { 'nginx-reload':
        command     => 'service nginx reload',
        refreshonly => true,
        subscribe   => [
            File[
                '/etc/nginx/sites-available/default'],
                Service['nginx']],
    }
}

# Include the nginx_redirect class to apply the configuration
include nginx_redirect
