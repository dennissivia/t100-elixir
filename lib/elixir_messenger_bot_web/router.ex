defmodule ElixirMessengerBotWeb.Router do
  use ElixirMessengerBotWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirMessengerBotWeb do
    pipe_through :api

    get "/webhook/callback", WebhookController, :callback
    post "/webhook/callback", WebhookController, :process
    # resources "/webhook", WebhookController, except: [:new, :edit]
  end
end
