# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :resume_builder,
  ecto_repos: [ResumeBuilder.Repo]

# Configures the endpoint
config :resume_builder, ResumeBuilderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UvPcr36CBdyjtJ1hkdoohOyY/coj832Yi5NvgvkqU1qZRg+kw5+kZH9ZY2/ftxyK",
  render_errors: [view: ResumeBuilderWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ResumeBuilder.PubSub,
           adapter: Phoenix.PubSub.PG2]

 config :resume_builder, :phoenix_swagger,
   swagger_files: %{
     "priv/static/swagger.json" => [
       router: ResumeBuilderWeb.Router,     # phoenix routes will be converted to swagger paths
       endpoint: ResumeBuilderWeb.Endpoint  # (optional) endpoint config used to set host, port and https schemes.
     ]
   }
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
