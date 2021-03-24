defmodule Test do
  alias Exlivery.Users.User
  alias Exlivery.Orders.{Order, Item}

  def test do
    # Item.build("pizza peperoni", :pizza, "50.xx", 2)
    # User.build("wagner", "wagner@mail.com", "08799621789", 38)
    # Order.build()
    {:ok, item1} = Item.build("pizza peperoni", :pizza, 25.5, 2)
    {:ok, item2} = Item.build("Açaí", :sobremesa, "15.0", 1)
    items = [item1, item2]
    {:ok, user} = User.build("Rua ABC", "Wagner Carvalho", "wagn@mail.com", "12345678900", 35)
    Order.build(user, items)
  end
end
