#!/bin/bash

mix deps.get
cd assets && npm install; cd -
mix ecto.setup
mix phx.server
