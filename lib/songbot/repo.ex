defmodule Songbot.Repo do
  use Ecto.Repo,
    otp_app: :songbot,
    adapter: Ecto.Adapters.Postgres
end
