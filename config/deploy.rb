# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'cybernetic'
set :deploy_user, 'deployer'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/home/deployer/apps/#{application}"

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


namespace :deploy do

  task :setup_config do
    on roles(:app) do
    sudo "ln -nfs #{current_path}/config/nginx.conf /etc/nginx/sites-enabled/#{application}"
    sudo "ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
    run "mkdir -p #{shared_path}/config"
    put File.read("config/database.example.yml"), "#{shared_path}/config/database.yml"
    puts "Now edit the config files in #{shared_path}."
    end
  end
  

  task :symlink_config do
    on  roles(:app) do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    end
  end


  desc "Make sure local git is in sync with remote."
  task :check_revision do
    on roles(:web) do
    unless `git rev-parse HEAD` == `git rev-parse origin/master`
      puts "WARNING: HEAD is not the same as origin/master"
      puts "Run `git push` to sync changes."
      exit
    end
    end
  end
  before "deploy", "deploy:check_revision"

end  
