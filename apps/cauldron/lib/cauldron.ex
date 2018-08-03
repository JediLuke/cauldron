defmodule Cauldron do
  @moduledoc """
  Documentation for Cauldron.
  """

  defmacro __using__(_opts) do
    quote do
      import Cauldron

    end
  end

  def cauldron(:brew) do
    "Hello, world."
    |> flexbox(alignment: "bulls-eye")
  end

  # def top_level_component(params) do
  #   _top_lvl = %{
  #     level: :top,
  #     html: container(params)
  #   }
  # end

  # def final_render(_top_lvl_component) do
  #   raw "Hi"
  # end

  # defp container([:responsive_flexbox, alignment: "dead-centre"]) do
  #   """
  #   <div class="container">
  #   </div>
  #   """
  # end


  # def cauldron_render_root(:bubble_bubble_toil_n_trubl) do

  # end

  @doc """
  OO people would call this a decorator - we'll wrap the inner component in a flexbox
  """
  def flexbox(inner_component, _opts) do
    ~s(
      <div style="display:flex; margin:0; width: 100vw; height:100vh; align-items:center; justify-content:center;">
      #{inner_component}
      <div>
      <script>#{inject_js()}</script>
    )
  end

  def inject_js() do
    "alert(\"Boosters are go!!\");"
  end

  @doc """
  This function is where the rubber hits the road.

  Converts .exs into valid HTML/CSS/JS & embedded into templates/layout/app.html.eex
  """
  # def render_root() do
  #   t = top_level_component([:responsive_flexbox, alignment: "dead-centre"])
  #   # |> add_pipeline_trigger(:page_dimensions)
  #   # |> add_pipeline_trigger(:global_state_tree)
  #   # |> calculate_layout
  #   # |> render_sub_components
  #   # |> text_frame tag: :h1, content: "Bubble, bubble, toil 'nd trouble!" # add a single component
  #   # |> final_render

  #   raw t.html
  # end

  # def calculate_layout(top_level_component) do
  #   dimensions = fetch_dimensions(top_level_component)
  #   # case dimensions do
  #   #   {x <= 200} -> :micro # lol this is gonna cause a big crash if I dynamically resize it
  #   #   {x >= 400, y >= 400} -> :desktop
  #   # end
  #   :desktop
  # end

  # def render_sub_components(top_level_component) do
  #   layout = fetch_layout(top_level_component)
  #   sub_components = case layout do
  #     :mobile -> mobile_layout
  #     :desktop -> desktop_layout
  #   end

  #   Enum.each(sub_components, &render(&1, global_state))
  # end

  # def mobile_layout do
  #   raise "not supported"
  # end

  # def desktop_layout do
  #   # title bar
  #   # 3 panels side by side -> can trigger changes to global state
  # end




  # defmodule ArtGalleryWeb.Cauldron.TopLevel do
  #   use Cauldron, :top_level
  #   alias ArtGalleryWeb.Cauldron.ComponentLib, as: Lib
  #   @doc """
  #   This function is where the rubber hits the road.

  #   Converts .exs into valid HTML/CSS/JS & embedded into templates/layout/app.html.eex
  #   """
  #   def render_root() do
  #     top_level_component(:responsive_flexbox, alignment: "dead-centre")
  #     |> add_pipeline_trigger :page_dimensions
  #     |> add_pipeline_trigger :global_state_tree
  #     |> calculate_layout
  #     |> render_sub_components
  #     |> final_render
  #   end

  #   def calculate_layout(top_level_component) do
  #     dimensions = return_dimensions(top_level_component)
  #     case dimensions do
  #       {x <= 200} -> :micro # lol this is gonna cause a big crash if I dynamically resize it
  #       {x >= 400, y >= 400} -> :desktop
  #     end
  #   end

  #   def render_sub_components(top_level_component) do
  #     layout =
  #     sub_components = case layout do
  #       :mobile -> mobile_layout
  #       :desktop -> desktop_layout
  #     end

  #     Enum.each(sub_components, Cauldron.call_render(&1))
  #   end

  #   def mobile_layout do
  #     raise "not supported"
  #   end

  #   def desktop_layout do

  #   end
  # end

end
