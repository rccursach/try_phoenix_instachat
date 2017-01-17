defmodule Instachat.RoomChannel do
  use Phoenix.Channel

  def join("room:lobby", _message, socket) do
    {:ok, socket}
  end
  def join(_room, _params, _socket) do
    {:error, %{reason: "you can only join the lobby"}}
  end
end