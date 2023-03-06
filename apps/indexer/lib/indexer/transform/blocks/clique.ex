defmodule Indexer.Transform.Blocks.Clique do
  @moduledoc """
  Handles block transforms for Clique chain.
  """

  alias Indexer.Transform.Blocks

  @behaviour Blocks

  @impl Blocks
  def transform(%{number: 0} = block), do: block

  def transform(block) when is_map(block) do
    %{block | miner_hash: "0x0000000000000000000000000000000000000000"}
  end
end
