if Node['platform'] == 'ubuntu'
    default['lampstack']['package_name'] = 'apache2'
    default['lampstack']['php_packages'] = ["php", "libapache2-mod-php",  "php-mysql", "php-cli"]
else
    default['lampstack'['package_name'] = 'httpd'
    default['lampstack']['php_packages'] = ["php", "php-mysql"]
    
end

