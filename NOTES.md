# Notes

## Creating Project

- Install Docker `brew cask install docker`
- Open Docker app
- Create `docker.compose.yml`
- Run `docker-compose run --rm web bash -c "cd .. && mix archive.install hex phx_new 1.4.0 --force && mix phx.new docker_test"` (answer `y` to all prompts)
- Update database `hostname` in `./config/dev.exs` to `db`
- Run `docker-compose run --rm web mix ecto.setup`
- Run `docker-compose up`
- Visit [localhost:4000](http://localhost:4000)
