defmodule Exlivery.Orders.Item do
  @keys [:description, :category, :unity_price, :quantity]
  @enforce_keys @keys
  @categories [:pizza, :hamburguer, :carne, :prato_feito, :japonesa, :sobremesa]

  defstruct @keys

  def build(description, category, unity_price, quantity)
      when quantity > 0 and category in @categories do
    unity_price
    |> Decimal.cast()
    |> build_item(description, category, quantity)
  end

  def build(_description, _category, _unity_price, _quantity), do: {:error, "Invalid parameters"}

  defp build_item({:ok, unity_price}, description, category, quantity) do
    {:ok,
     %__MODULE__{
       description: description,
       category: category,
       quantity: quantity,
       unity_price: unity_price
     }}
  end

  def build(_error, _description, _category, _quantity), do: {:error, "Invalid parameters"}
end
