defmodule SurfaceMultiRenderReproducerWeb.Router do
  use SurfaceMultiRenderReproducerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {SurfaceMultiRenderReproducerWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SurfaceMultiRenderReproducerWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/demo", Demo
  end

  # Other scopes may use custom stacks.
  # scope "/api", SurfaceMultiRenderReproducerWeb do
  #   pipe_through :api
  # end
end
