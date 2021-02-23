defmodule Bonapay.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Bonapay.Repo,
      # Start the Telemetry supervisor
      BonapayWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Bonapay.PubSub},
      # Start the Endpoint (http/https)
      BonapayWeb.Endpoint
      # Start a worker by calling: Bonapay.Worker.start_link(arg)
      # {Bonapay.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Bonapay.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BonapayWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
