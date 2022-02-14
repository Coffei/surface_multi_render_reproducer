defmodule SurfaceMultiRenderReproducerWeb.Demo do
  use Surface.LiveView

  alias SurfaceMultiRenderReproducerWeb.Components.Hero

  def render(assigns) do
    ~F"""
    <div>
      <Hero name="John Doe" subtitle="How are you?" color="info"/>
    </div>
    """
  end
end
