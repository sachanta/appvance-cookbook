# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "delivery"
client_key               "#{current_dir}/delivery.pem"
validation_client_name   "chef12-validator"
validation_key           "#{current_dir}/chef12-validator.pem"
chef_server_url          "https://52.34.232.116/organizations/chef12"
cookbook_path            ["#{current_dir}/../cookbooks"]
