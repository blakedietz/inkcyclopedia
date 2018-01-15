defmodule InkcyclopediaApiWeb.Router do
  use InkcyclopediaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InkcyclopediaApiWeb do
    pipe_through :api
  end
end
