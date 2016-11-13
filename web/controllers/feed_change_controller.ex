defmodule FacebookSubscriptions.FeedChangeController do
  use FacebookSubscriptions.Web, :controller

  def show(conn, params) do
    render conn, "show.json", hub_challenge: params["hub.challenge"]
  end

  def create(conn, _params) do
    render conn, "create.json"
  end
end
