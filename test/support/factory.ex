defmodule Exlivery.Factory do
  use ExMachina
  alias Exlivery.Orders.Item
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
end
