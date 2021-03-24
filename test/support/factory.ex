defmodule Exlivery.Factory do
  use ExMachina
  alias Exlivery.Orders.{Item, Order}
  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Carlos",
      email: "carlos@mail.com",
      cpf: "01234567890",
      address: "Rua Elixir",
      age: 30
    }
  end

  def item_factory() do
    %Item{
      description: "Pizza de peperoni",
      category: :pizza,
      quantity: 1,
      unity_price: Decimal.new("35.5")
    }
  end

  def order_factory() do
    {:ok,
     %Order{
       delivery_address: "Rua Elixir",
       items: [
         build(:item),
         build(:item,
           description: "Temaki de atum",
           category: :japonesa,
           quantity: 2,
           unity_price: Decimal.new("20.50")
         )
       ],
       total_price: Decimal.new("76.50"),
       user_cpf: "01234567890"
     }}
  end
end
