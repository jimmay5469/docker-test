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

- Run `ssh -A root@[ip] "bash -s" -- < ./server/provision.sh`
- Run `scp ./config/prod.secret.exs root@[ip]:~/apps/docker-test/config/prod.secret.exs`

### Starting Server
- Run `ssh -A root@[ip] "docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d"`
