defmodule Test do
  alias Exlivery.Users.User
  alias Exlivery.Orders.{Order, Item}
  alias Exlivery.Users.Agent, as: UserAgent

  def test do
    
    # Item.build("pizza peperoni", :pizza, "50.xx", 2)
    # User.build("wagner", "wagner@mail.com", "08799621789", 38)
    # Order.build()
    # {:ok, item1} = Item.build("pizza peperoni", :pizza, 25.5, 2)
    # {:ok, item2} = Item.build("Açaí", :sobremesa, "15.0", 1)
    # items = [item1, item2]
    # {:ok, user} = User.build("Rua ABC", "Wagner Carvalho", "wagn@mail.com", "12345678900", 35)
    # Order.build(user, items)

    # ======================================================================================
    # AGENT
    # UserAgent.start_link(:ok)
    # {:ok, user} = User.build("Rua ABC", "wagner", "wagner@mail.com", "08799621789", 38)
    # UserAgent.save(user)
    # UserAgent.get(user.cpf)
    # UserAgent.get("jfjf")

    # ================================================================================
    # FACHADA AGENT
    # Exlivery.start_agents()
    user = %{address: "Rua ABC", name: "Wagner Carvalho", email: "wagn@mail.com", cpf: "12345678900", age: 15}
    Exlivery.create_or_update_user(user)
  end
end
