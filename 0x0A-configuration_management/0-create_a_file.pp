# Puppet Manifest: Create a File in /tmp
#
# This Puppet manifest ensures the existence of a file named "school" in the /tmp directory
# with specific permissions, owner, group, and content.
#
# Requirements:
# - File path is /tmp/school
# - File permission is 0744
# - File owner is www-data
# - File group is www-data
# - File contains "I love Puppet"
#
# Example Usage:
#   puppet apply 0-create_a_file.pp
#
# Author: Alexander Udeogaranya
# Repository: https://github.com/Dr-dyrane/alx-system_engineering-devops
#                     /0x0A-configuration_management

# Ensure the directory exists
file { '/tmp':
  ensure => 'directory',
}

# Create the file with specified permissions, owner, group, and content
file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
