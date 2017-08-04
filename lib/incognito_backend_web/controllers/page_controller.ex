defmodule IncognitoBackendWeb.PageController do
  use IncognitoBackendWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
