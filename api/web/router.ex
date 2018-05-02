defmodule Loose.Router do
  use Loose.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Loose do
    pipe_through :api
  end
end
