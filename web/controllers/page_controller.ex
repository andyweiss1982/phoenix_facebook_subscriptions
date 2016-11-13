defmodule FacebookSubscriptions.PageController do
  use FacebookSubscriptions.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
