defmodule DockerTestWeb.Router do
  use DockerTestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DockerTestWeb do
    pipe_through :browser

    resources "/", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", DockerTestWeb do
  #   pipe_through :api
  # end
end
