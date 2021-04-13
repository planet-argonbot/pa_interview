# Application Details:
<<<<<<< HEAD
Rails: 6.1
=======
Rails: 5.2.2
>>>>>>> master
Ruby: 2.6.0
Database: Postgresql
Background processor: Sidekiq via Redis

<<<<<<< HEAD

# Setup instructions:
Before beginning the setup process, ensure that you have postgresql installed and running, as well as a redis instance running. On MacOs, you can install and start both of these via `homebrew`

1. install ruby 2.6 using your choice of Ruby Version manager(rbenv, rvm)
2. install bundler gem `gem install bundler:1.17.2`
3. install the gems for the project: `bundle`
4. Create and seed the database: `bin/rails db:setup`
5. install the foreman gem `gem install foreman`

To start application use foreman: `foreman start -f Procfile.dev`
=======
To start application use foreman: `foreman start -f Procfile.dev`

Planet Argon coding exercise overview:

  As a user, I want to be able to fetch todos from an external API.

  my todos are currently stored at https://jsonplaceholder.typicode.com/todos?usertId={my_user_id} but I want them
  stored on this application's database so I can better track them.

  On my #show view I want to be able to click a button that fetches a todo.

  After a request is made, I should not be able to submit another request until the first request is complete.

  I would like to see the status of my request. (Ready/Processing).
    Ready is displayed when I have no pending requests.
    Processing is when I am waiting for the last request to be completed.
>>>>>>> master
