defmodule Songbot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SongbotWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Songbot.PubSub},
      # Start the Endpoint (http/https)
      SongbotWeb.Endpoint
      # Start a worker by calling: Songbot.Worker.start_link(arg)
      # {Songbot.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Songbot.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SongbotWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
