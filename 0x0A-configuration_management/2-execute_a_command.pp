# Puppet Manifest: Execute Command to Kill Process
#
# This Puppet manifest executes a command to kill a process named "killmenow."
#
# Requirements:
# - Must use the exec Puppet resource
# - Must use pkill
#
# Example Usage:
#   puppet apply 2-execute_a_command.pp
#
# Author: Alexander Udeogaranya
# Repository: https://github.com/your/repo

# Use the exec resource to run the pkill command to terminate the process
exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow', # Specify the full path to pkill
  path        => '/usr/bin:/bin',
  refreshonly => true,
  logoutput   => true,
  onlyif      => '/usr/bin/pgrep killmenow',  # Specify the full path to pgrep
}
