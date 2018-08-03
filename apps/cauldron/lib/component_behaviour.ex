defmodule Cauldron.ComponentBehaviour do
  @doc "All cauldron components must implement cauldron_render"
  @callback cauldron_render_root() :: String.t
end
