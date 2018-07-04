# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :art_gallery,
  namespace: ArtGallery,
  ecto_repos: [ArtGallery.Repo]

# Configures the endpoint
config :art_gallery, ArtGalleryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t+zDDtxmhiGEWz7A2MZjE0bPpcb/6tLVCX8YvMqZ4et+dtRuxGOQ40kvySJ9ftB7",
  render_errors: [view: ArtGalleryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ArtGallery.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
