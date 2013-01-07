root = "/home/deployer/apps/famemonitor"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.famemonitor.sock"
worker_processes 2
timeout 30


# server {
#    server_name www.famemonitor.com;
#    root /home/deployer/apps/famemonitor/public;
#    location / {
#      proxy_set_header Host $http_host;
#      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#      if (!-f $request_filename) {
#        proxy_pass http://unicorn_famemonitor;
#      }
#    }
#  }

