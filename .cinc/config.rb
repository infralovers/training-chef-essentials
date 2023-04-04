current_dir = File.dirname(__FILE__)
username = "tool-user-XY"
log_level                :info
log_location             STDOUT
node_name                username
client_key               "#{current_dir}/client.pem"
chef_server_url          "https://api.chef.io/organizations/#{username}-org"
cookbook_path            ["#{current_dir}/../cookbooks"]