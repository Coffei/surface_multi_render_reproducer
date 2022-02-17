# Surface multi-render bug reproducer

This reproducer describes a strange behavior in Surface which started with 0.7.0
(or somewhere between 0.5.1 and that version).

If you use components with multiple render functions, `:on-click` events in the
inner render functions are not rendered properly. See
lib/surface_multi_render_reproducer_web/components/hero.ex for example.

## To reproduce

1. Download the dependencies - `mix deps.get`
2. Run the app - `iex -S mix phx.server`
3. Open up the page - http://localhost:4000/demo
4. Try uploading a file and check logs.
