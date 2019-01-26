# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :docker_test,
  ecto_repos: [DockerTest.Repo]

# Configures the endpoint
config :docker_test, DockerTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nv2m8v/gljK7TVhPUuu+cg1e/9MMve/VIgB9D4wM/yZCljCGCsooZnhjXnfaFfVD",
  render_errors: [view: DockerTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DockerTest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
