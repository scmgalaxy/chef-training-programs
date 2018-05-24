# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aromalraj123"
client_key               "#{current_dir}/aromalraj123.pem"
chef_server_url          "https://13.126.70.31/organizations/agco"
cookbook_path            ["#{current_dir}/../cookbooks"]

