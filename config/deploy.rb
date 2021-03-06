# config valid only for current version of Capistrano
lock "3.7.1"

set :application, "smfr.ddns.net"
set :repo_url, "/home/solaste/git"

set :rvm_ruby_version, 'ruby-2.3.3' 
set :rvm_custom_path, '/root/.rvm' 

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, "/home/solaste/smfr.ddns.net"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
 append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
 append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets"

 set :nginx_config_name, "smfr.ddns.net"
 set :nginx_server_name, "smfr.ddns.net"
 set :puma_workers, 2
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
