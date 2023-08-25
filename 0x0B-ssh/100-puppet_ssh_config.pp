# Puppet Manifest: 100-puppet_ssh_config.pp
#
###############################################################################
# Description:
#   This Puppet manifest configures the SSH client to use the private key
#   '~/.ssh/school' for authentication & refuses password-based authentication.
#   It manages the SSH client configuration file '/etc/ssh/ssh_config'.
#
# Requirements:
#   - Puppet must be installed on your system.
#   - Ensure that you have already created the 'school' private key and its
#     corresponding public key with the '1-create_ssh_key_pair' script.
#
# Example:
#   To apply this manifest and configure the SSH client, use this command:
#   sudo puppet apply 100-puppet_ssh_config.pp
#
# Author:
#   Alexander Udeogaranya
#
# Repository:
#   https://github.com/Dr-dyrane/alx-system_engineering-devops/0x0B-ssh
###############################################################################

# Ensure Puppet uses the 'stdlib' module
include stdlib

# Manage the SSH client configuration file
file_line { 'Refuse to authenticate using a password':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Use private key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school'
}
