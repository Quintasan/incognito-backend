# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :incognito_backend,
  ecto_repos: [IncognitoBackend.Repo]

# Configures the endpoint
config :incognito_backend, IncognitoBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "56pxNP5/CA26XBPHmGPXCvISBVnZ9K7btPR+Tr2i9zSfy1hXPcrXzW9gvjmPOYwK",
  render_errors: [view: IncognitoBackendWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IncognitoBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
