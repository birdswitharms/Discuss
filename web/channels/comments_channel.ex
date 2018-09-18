defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel

  def join(name, _params, socket) do
    {:ok, %{hello: "world"}, socket}
  end

  def handle_in() do

  end
end
