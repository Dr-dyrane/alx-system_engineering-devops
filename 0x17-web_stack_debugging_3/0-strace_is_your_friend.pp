# Puppet Manifest: 0-strace_is_your_friend.pp
# Author: Alexander Udeogaranya
# Description: Puppet manifest to automate the fix for Apache 500 error

# Define the exec resource to run the fix
exec { 'fix-wordpress':
  command     => '/usr/sbin/fix_apache.sh', # The script that fixes the issue
  path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', # Set the PATH environment variable
  refreshonly => true, # Only run when notified
  subscribe   => File['/usr/sbin/fix_apache.sh'], # Subscribe to changes in the fix script
  logoutput   => true, # Log the output of the script
}

# Define a file resource for the fix script
file { '/usr/sbin/fix_apache.sh':
  ensure  => present, # Ensure the file exists
  source  => 'puppet:///modules/wordpress/fix_apache.sh', # Source of the script (you may need to provide the actual source path)
  owner   => 'root', # Set the owner
  group   => 'root', # Set the group
  mode    => '0755', # Set the file permissions
}

# Notify the exec resource to run when the script is updated
File['/usr/sbin/fix_apache.sh'] -> Exec['fix-wordpress']
