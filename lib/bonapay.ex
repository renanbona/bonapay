defmodule Bonapay do
  alias Bonapay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
