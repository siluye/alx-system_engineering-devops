# Fix why Apache returns 500 error, then automate using Puppet

exec { '/var/www/html/wp-setting.php':
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  command => "sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php",
}
