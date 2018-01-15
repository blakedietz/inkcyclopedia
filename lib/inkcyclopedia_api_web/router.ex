defmodule InkcyclopediaApiWeb.Router do
  use InkcyclopediaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug Phauxth.Authenticate, method: :token
  end

  scope "/api", InkcyclopediaApiWeb do
    pipe_through :api

    post "/sessions", SessionController, :create
    resources "/users", UserController, except: [:new, :edit]
    get "/confirm", ConfirmController, :index
    post "/password_resets", PasswordResetController, :create
    put "/password_resets/update", PasswordResetController, :update
  end

end
