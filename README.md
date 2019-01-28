# Application Details:
Rails: 5.2.2
Ruby: 2.6.0
Database: Postgresql
Background processor: Sidekiq via Redis

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
