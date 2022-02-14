defmodule SurfaceMultiRenderReproducerWeb.PageController do
  use SurfaceMultiRenderReproducerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
