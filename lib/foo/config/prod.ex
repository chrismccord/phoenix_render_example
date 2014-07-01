defmodule Foo.Config.Prod do
  use Foo.Config

  config :router, port: System.get_env("PORT") || 4000,
                  # Full error reports are disabled
                  consider_all_requests_local: false,
                  ssl: false


  config :plugs, code_reload: false

  config :logger, level: :error
end


