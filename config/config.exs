# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :inkcyclopedia_api,
  ecto_repos: [InkcyclopediaApi.Repo]

# Configures the endpoint
config :inkcyclopedia_api, InkcyclopediaApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xns8ZHqwMqSWTrvSnN4gMIG5QmyFkfCn5Du8SMi46GBZGqU2EppmpiJS5q66ExQL",
  render_errors: [view: InkcyclopediaApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InkcyclopediaApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  token_salt: "M/q0a7DG",
  endpoint: InkcyclopediaApiWeb.Endpoint

# Mailer configuration
config :inkcyclopedia_api, InkcyclopediaApi.Mailer,
  adapter: Bamboo.LocalAdapter

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
