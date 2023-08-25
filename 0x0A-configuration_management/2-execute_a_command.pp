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
# Repository: https://github.com/Dr-dyrane/alx-system_engineering-devops
#                     /0x0A-configuration_management

# Use the exec to run the pkill command to terminate the "killmenow" process
exec { 'pkill killmenow' :
    path    => '/bin/',
    command => 'pkill killmenow',
    }
