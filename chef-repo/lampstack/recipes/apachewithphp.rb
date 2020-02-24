
if Node['platform'] == 'ubuntu'
    apt_package 'update packages' do
        action :install
    end
end

package = node['lampstack']['package_name']

    package 'package' do
        action :install
        notifies : enable, "service[#{package}]"
    end
end

php_packages = node['lampstack']['php_packages']

php_packages.each do |php modules|
    package 'php modules' do
        action :install
    end
end

cookbook_file '/var/www/html/info.php' do
    source 'info.php'
    action :create
    notifies : restart, "service[#{package}]"
end

service 'package' do
    action :nothing
end
