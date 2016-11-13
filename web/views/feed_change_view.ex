defmodule FacebookSubscriptions.FeedChangeView do
  use FacebookSubscriptions.Web, :view
  @verify_token Application.get_env(:facebook_subscriptions, __MODULE__)[:verify_token]

  def render("show.json", %{challenge: challenge, verify_token: @verify_token}) do
    String.to_integer(challenge)
  end

  def render("show.json", _) do
    %{}
  end

  def render("create.json", _) do
    %{}
  end
end
