root = "/home/atlaswarner/apps/cybernetic/current"
working_directory root
pid "#{root}/tmp/pids/unicorn-cybernetic.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.cybernetic.sock"
worker_processes 2
timeout 30

