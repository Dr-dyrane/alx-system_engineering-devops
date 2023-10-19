# Puppet Manifest to Adjust User Limits for the holberton User

# Description:
# This manifest changes the OS configuration to enable the user
# 'holberton' to log in and open files without encountering
# "Too many open files" errors.

# Puppet Lint:
# This manifest adheres to Puppet Lint version 2.1.1 without errors.

# Puppet Version:
# This manifest is intended for use with Puppet v3.4.

# Increase hard file limit for the user 'holberton'
exec { 'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for the user 'holberton'
exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
