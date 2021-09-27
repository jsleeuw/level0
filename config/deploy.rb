# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "level0"
set :repo_url,        'git@github.com:jsleeuw/level0.git'
set :user,            'deploy'
set :puma_threads,    [4, 16]
set :puma_workers,    0

# Don't change these unless you know what you're doing
set :pty,             true
set :use_sudo,        false
set :stage,           :production
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
# set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa_azure_deploy.pub) }
set :ssh_options,     { forward_agent: true }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord
set :puma_enable_socket_service, true

set :keep_releases, 5
set :rvm_type, :user
set :rvm_ruby_version, '2.6.7@level0'

append :linked_files, 'config/secrets.yml', 'config/application.yml', 'config/puma.rb'
set :linked_dirs, %w(log tmp/pids tmp/sockets)

# append :linked_files, 'config/database.yml', 'config/secrets.yml'
# namespace :puma do
#   desc 'Create Directories for Puma Pids and Socket'
#   task :make_dirs do
#     on roles(:app) do
#       execute "mkdir #{shared_path}/tmp/sockets -p"
#       execute "mkdir #{shared_path}/tmp/pids -p"
#     end
#   end

#   before :start, :make_dirs
# end
