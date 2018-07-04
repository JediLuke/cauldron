defmodule ArtGalleryWeb.PageController do
  use ArtGalleryWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
