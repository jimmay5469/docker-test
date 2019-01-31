# DockerTest

To start your Phoenix server:

  * Start Phoenix endpoint with `docker-compose up`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Notes

### Creating Project

- Install Docker `brew cask install docker`
- Open Docker app
- Create `docker.compose.yml`
- Run `docker-compose run --rm web bash -c "cd .. && mix archive.install hex phx_new 1.4.0 --force && mix phx.new docker_test"` (answer `y` to all prompts)
- Update database `hostname` in `./config/dev.exs` to `db`
- Run `docker-compose run --rm web mix ecto.setup`
- Run `docker-compose up`
- Visit [localhost:4000](http://localhost:4000)

### Provisioning Server

- Run `servers/jimmay5469-docker` provisioning
- Run `ssh -A deploy@198.211.103.220 "ssh-keyscan github.com >> ~/.ssh/known_hosts"`
- Run `ssh -A deploy@198.211.103.220 "git clone git@github.com:jimmay5469/docker-test.git ~/apps/docker-test"`
- Run `scp ./config/prod.secret.exs deploy@198.211.103.220:~/apps/docker-test/config/prod.secret.exs`
- Run `scp ./Caddyfile deploy@198.211.103.220:~/apps/docker-test/Caddyfile`

### Starting Server
- Run `ssh -A deploy@198.211.103.220 "cd ~/apps/docker-test && docker-compose -f docker-compose.yml -f docker-compose.prod.yml -f docker-compose.prod.caddy.yml up -d"`
