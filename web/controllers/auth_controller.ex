defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth

  alias Discuss.User

  def callback(%{assigns: %{ueberauth_uath: auth}} = conn, params) do
    user_params =
      %{token: auth.credentials.token,
        email: auth.info.email,
        name: auth.info.name,
        provider: "github"}

    changeset = User.changeset%{%User{}, user_params}
    Repo.insert(changeset)
  end
end
