set :application, "openlocal.de"
set :repository,  "git@github.com:dudemeister/openlocal.de.git"
set :scm, :git
set :use_sudo, false
set :deploy_to, "/home/openlocal/production"
set :user, 'openlocal'

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "208.88.124.200"
role :web, "208.88.124.200"
role :db,  "208.88.124.200", :primary => true