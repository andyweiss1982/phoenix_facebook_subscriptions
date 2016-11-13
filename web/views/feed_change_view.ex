defmodule FacebookSubscriptions.FeedChangeView do
  use FacebookSubscriptions.Web, :view

  def render("show.json", %{hub_challenge: hub_challenge}) do
    String.to_integer(hub_challenge)
  end

  def render("create.json", _) do
    %{
    }
  end
end
