defmodule Bonapay.Repo do
  use Ecto.Repo,
    otp_app: :bonapay,
    adapter: Ecto.Adapters.Postgres
end
