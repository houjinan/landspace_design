set :stage, :production
set :server_name, '54.149.203.253'

set :ssh_options, {
    user: "web"

    # keys: %w(/Users/hanks/Documents/Development/hankshou.pem),
    # forward_agent: true
}


set :deploy_to, "/data/www/landspace_design"

set :unicorn_config, "#{shared_path}/config/unicorn.conf.rb"
set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

server fetch(:server_name), user: "web", roles: %w{web app db}