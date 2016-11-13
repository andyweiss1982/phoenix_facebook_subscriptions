# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :facebook_subscriptions,
  ecto_repos: [FacebookSubscriptions.Repo]

# Configures the endpoint
config :facebook_subscriptions, FacebookSubscriptions.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "25IwSvQU7YXZyZmGQRToFjRq8+6HSCHd16CuFeO7hqThKseaYnSYyznDh3t8P5Jm",
  render_errors: [view: FacebookSubscriptions.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FacebookSubscriptions.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
