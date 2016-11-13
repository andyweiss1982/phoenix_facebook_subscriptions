defmodule FacebookSubscriptions.FeedChangeController do
  use FacebookSubscriptions.Web, :controller

  def show(conn, params) do
    render conn, "show.json",
      challenge:    params["hub.challenge"],
      verify_token: params["hub.verify_token"]
  end

  def create(conn, _params) do
    render conn, "create.json"
  end
end
