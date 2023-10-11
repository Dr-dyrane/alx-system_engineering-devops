# Puppet Manifest: 0-strace_is_your_friend.pp
# Author: Alexander Udeogaranya
# Description: Puppet manifest to replace a line in a file on a server

# Define the file path to the target file that needs the line replacement
$file_to_edit = '/var/www/html/wp-settings.php'

# Define an exec resource to execute the 'sed' command for line replacement
exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",  # The 'sed' command to perform the line replacement
  path    => ['/bin','/usr/bin']  # Set the command's search path
}
