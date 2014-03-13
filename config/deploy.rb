# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'cybernetic'
set :repo_url, 'git@github.com:landrywj/cybernetic.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/deployer/apps/cybernetic'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
#set :default_env, { path: "/home/deployer/.rvm/rubies/ruby-2.1.0:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set(:config_files, %w(
  nginx.conf
  unicorn.rb
  unicorn_init.sh
))
 
set(:executable_config_files, %w(
  unicorn_init.sh
))

set(:symlinks, [
  {
    source: "nginx.conf",
    link: "/etc/nginx/sites-enabled/#{fetch(:full_app_name)}"
  },
  {
    source: "unicorn_init.sh",
    link: "/etc/init.d/unicorn_#{fetch(:full_app_name)}"
  }
])
namespace :deploy do
  

end
