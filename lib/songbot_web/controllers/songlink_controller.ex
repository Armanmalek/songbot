defmodule SongbotWeb.SonglinkController do
  use SongbotWeb, :controller
  import Plug.Conn

  def index(conn, params) do
    IO.inspect(conn)
    # whichBrand = Conn.get
    json(conn, %{"arman" => "erer"})
  end


end
