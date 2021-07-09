defmodule SongbotWeb.SonglinkController do
  use SongbotWeb, :controller

  def index(conn, params) do
    IO.inspect(params)
    json(conn, %{"arman" => "erer"})
  end
end
