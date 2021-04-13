# Application Details:
Rails: 6.1
Ruby: 2.6.0
Database: Postgresql
Background processor: Sidekiq via Redis

# Setup instructions:
Before beginning the setup process, ensure that you have postgresql installed and running, as well as a redis instance running. On MacOs, you can install and start both of these via `homebrew`

1. install ruby 2.6 using your choice of Ruby Version manager(rbenv, rvm)
2. install bundler gem `gem install bundler:2.2.16`
3. install the gems for the project: `bundle`
4. Create and seed the database: `bin/rails db:setup`
5. install the foreman gem `gem install foreman`

To start application use foreman: `foreman start -f Procfile.dev`
