defmodule MyChatWeb.PageController do
  use MyChatWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
