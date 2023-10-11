# Puppet Manifest: 0-strace_is_your_friend.pp
# Author: Alexander Udeogaranya
# Description: Puppet manifest to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
