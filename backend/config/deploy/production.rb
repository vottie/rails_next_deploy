# 本番環境（production）用
# TODO: 本番サーバー情報を記載
# server 'your.production.server', user: 'deploy', roles: %w{app db web}
set :stage, :production
set :rails_env, 'production'
# set :deploy_to, '/var/www/rails_next_deploy/backend' 