defmodule FlashElmWeb.PageController do
  use FlashElmWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
