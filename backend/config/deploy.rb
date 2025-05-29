# config valid for current version and patch releases of Capistrano
lock '~> 3.18.0'

set :application, 'rails_next_deploy'
set :repo_url, 'https://github.com/vottie/rails_next_deploy.git'

# Number of releases to keep on the deployment server
set :keep_releases, 5

# Add linked files and directories as needed
append :linked_files, 'config/master.key'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'storage' 