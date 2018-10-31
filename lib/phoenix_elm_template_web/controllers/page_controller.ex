defmodule PhoenixElmTemplateWeb.PageController do
  use PhoenixElmTemplateWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
