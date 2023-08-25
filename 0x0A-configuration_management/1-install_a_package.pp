# Puppet Manifest: Install Flask Package

# This Puppet manifest ensures that the Flask package is installed using pip3 with a specific version.

# Requirements:
# - Install Flask package
# - Version must be 2.1.0

# Example Usage:
#   puppet apply 1-install_a_package.pp

# Author: Alexander Udeogaranya
# Repository: https://github.com/Dr-dyrane/alx-system_engineering-devops
#                     /0x0A-configuration_management

# Use the package resource to install Flask
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
