defmodule Exlivery.Orders.OrderTest do
  use ExUnit.Case
  alias Exlivery.Orders.{Order, Item}
  import Exlivery.Factory

  describe "build/2" do
    test "when all params are valid, returns an order" do
      user = build(:user)

      items = [
        build(:item),
        build(:item,
          description: "Temaki de atum",
          category: :japonesa,
          quantity: 2,
          unity_price: Decimal.new("20.50")
        )
      ]

      response = Order.build(user, items)

      expected_response =
        {:ok,
         %Order{
           delivery_address: "Rua Elixir",
           items: [
             %Item{
               category: :pizza,
               description: "Pizza de peperoni",
               quantity: 1,
               unity_price: Decimal.new("35.5")
             },
             %Item{
               category: :japonesa,
               description: "Temaki de atum",
               quantity: 2,
               unity_price: Decimal.new("20.50")
             }
           ],
           total_price: Decimal.new("76.50"),
           user_cpf: "01234567890"
         }}

      assert response == expected_response
    end

    test "when there is no items in the order, returns an error" do
        items = []
        user = build(:user)
        response = Order.build(user, items)
        expected_response = {:error, "Invalid parameters"}
        assert response == expected_response
    end
  end
end
