defmodule Bonapay.Users.Create do
  alias Bonapay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
