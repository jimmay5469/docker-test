# DockerTest

To start your Phoenix server:

  * Install dependencies with `docker-compose run --rm web mix deps.get`
  * Create and migrate your database with `docker-compose run --rm web mix ecto.setup`
  * Install Node.js dependencies with `docker-compose run --rm web bash -c "cd assets && npm install"`
  * Start Phoenix endpoint with `docker-compose up`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
