package 'tree' do
  action :install
end

file '/etc/motd' do
  content "Property of ...
IPADDRESS: #{node['ipaddress']}
HOSTNAME: #{node['hostname']}
Memory: #{node['memory']['total']}
CPU CORES: #{node['cpu']['0']['cores']}
"
end
