# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bonapay,
  ecto_repos: [Bonapay.Repo]

# Configures the endpoint
config :bonapay, BonapayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EdwkYANg1X4BiIo/Umalmm9beljXwX/M6Calx9ck3aneTkUFF3dQY+KQwG/ndeLf",
  render_errors: [view: BonapayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Bonapay.PubSub,
  live_view: [signing_salt: "UgTxZ26e"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
