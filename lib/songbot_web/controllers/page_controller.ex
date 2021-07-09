defmodule SongbotWeb.PageController do
  use SongbotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
