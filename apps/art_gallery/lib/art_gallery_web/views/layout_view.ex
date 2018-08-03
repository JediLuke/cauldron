defmodule ArtGalleryWeb.LayoutView do
  use ArtGalleryWeb, :view
  use Cauldron

  def cauldron_render_root() do
    "Hello, world."
    |> flexbox(alignment: "bulls-eye")
  end
end
