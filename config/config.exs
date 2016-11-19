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

config :ueberauth, Ueberauth,
  providers:
    [
      facebook: { Ueberauth.Strategy.Facebook, [default_scope: "email,public_profile,user_friends,feed"] }
    ]

config :ueberauth, Ueberauth.Strategy.Facebook.OAuth,
  client_id: System.get_env("FACEBOOK_CLIENT_ID"),
  client_secret: System.get_env("FACEBOOK_CLIENT_SECRET")

config :facebook_subscriptions, FacebookSubscriptions.FeedChangeView,
  verify_token: System.get_env("FB_SUBSCRIPTION_VERIFY_TOKEN")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
