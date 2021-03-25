defmodule Test do
  alias Exlivery.Users.User
  alias Exlivery.Orders.{Order, Item}
  alias Exlivery.Users.Agent, as: UserAgent
  alias Exlivery.Orders.Agent, as: OrderAgent

  def test do
    # Item.build("pizza peperoni", :pizza, "50.xx", 2)
    # user = User.build("Rua ABC", "wagner", "wagner@mail.com", "08799621789", 38)
    # Order.build()
    # {:ok, item1} = Item.build("pizza peperoni", :pizza, 25.5, 2)
    # {:ok, item2} = Item.build("Açaí", :sobremesa, "15.0", 1)
    # items = [item2]
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
    # user = %{address: "Rua ABC", name: "Wagner Carvalho", email: "wagn@mail.com", cpf: "12345678900", age: 15}
    # Exlivery.create_or_update_user(user)

    # ======================================================
    # ORDER AGENT
    # OrderAgent.start_link(:ok)
    # {:ok, user} = User.build("Rua ABC", "wagner", "wagner@mail.com", "08799621789", 38)
    # {:ok, item1} = Item.build("pizza peperoni", :pizza, 25.5, 1)
    # {:ok, order} = Order.build(user, [item1])
    # OrderAgent.start_link(:ok)
    # {:ok, uuid} = OrderAgent.save(order)
    # OrderAgent.get(uuid)
    # ======================================================
    #  AGENTS
    #  Exlivery.start_agents
    # user = Exlivery.create_or_update_user(%{address: "Rua ABC", name: "wagner", email: "wagner@mail.com", cpf: "08799621789", age: 38})
    # items = [
    #   %{description: "pizza peperoni", category: :pizza, unity_price: 25.5, quantity: 1},
    #   %{description: "Açaí", category: :sobremesa, unity_price: "15.0", quantity: 1}
    # ]
    
    # Exlivery.create_or_update_order(%{user_cpf: "08799621789", items:  items})
    # OrderAgent.get("319585c6-8886-4ae9-a27c-a470e7c77914")

  end
end
