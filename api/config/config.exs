# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :loose,
  ecto_repos: [Loose.Repo]

# Configures the endpoint
config :loose, Loose.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ASsfvLpwoVSVAOHlfp9LWmDRINWCFsRM2sS/P7ZrLKMs0JKtv5/swye/fhyj2P9H",
  render_errors: [view: Loose.ErrorView, accepts: ~w(json)],
  pubsub: [name: Loose.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
