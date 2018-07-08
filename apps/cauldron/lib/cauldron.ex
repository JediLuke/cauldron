defmodule Cauldron do
  @moduledoc """
  Documentation for Cauldron.
  """

  defmacro __using__(_opts) do
    quote do
      import Cauldron
    end
  end


  def top_level_component(params) do
    _top_lvl = %{
      level: :top,
      html: container(params)
    }
  end

  # def final_render(_top_lvl_component) do
  #   raw "Hi"
  # end

  defp container([:responsive_flexbox, alignment: "dead-centre"]) do
    """
    <div class="container">
    </div>
    """
  end
end
