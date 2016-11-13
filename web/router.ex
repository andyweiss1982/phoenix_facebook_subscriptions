defmodule FacebookSubscriptions.Router do
  use FacebookSubscriptions.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FacebookSubscriptions do
    pipe_through :browser # Use the default browser stack

    get   "/",              PageController,       :index
  end

  # Other scopes may use custom stacks.
  scope "/api", FacebookSubscriptions do
    pipe_through :api

    get   "/feed_change",   FeedChangeController, :show
    post  "/feed_change",   FeedChangeController, :create
  end
end
