# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :flash_elm, FlashElmWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ssC9F80WNRIpL3TTjSc6HOWbujHE2w6hILSNn2c35lm/yi1Mn/Yhb3GBfQs4Iinx",
  render_errors: [view: FlashElmWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FlashElm.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
