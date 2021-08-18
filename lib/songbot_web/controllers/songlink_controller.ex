defmodule SongbotWeb.SonglinkController do
  use SongbotWeb, :controller
  import Plug.Conn

  def index(conn, params) do
    IO.inspect(params)

    getParams(params)
    json(conn, %{fuck: "off"}
  end

  def getParams(%{"response_url" => url, "text" => text} = params) do

    text |> String.contains?("spotify")
    |> case do
      true -> call_spotify(text)
      false -> "doesn't work rn"
   end

  def getParams(%{"response_url" => url}) do
    "No song provided: Paste link after slash command"
  end

  def call_spotify(text), do: ""
end
