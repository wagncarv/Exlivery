defmodule Test do
  # alias Exlivery.Users.User
  # alias Exlivery.Orders.{Order, Item}
  # alias Exlivery.Users.Agent, as: UserAgent
  # alias Exlivery.Orders.Agent, as: OrderAgent
  # alias Exlivery.Orders.Report

  @url "https://www.instagram.com/"
  def request(username) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get("#{@url}")
    body |> Jason.decode()
  end

  def test do
    request("washingtosd3")
  end
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
    #   %{description: "Sanduíche", category: :hamburguer, unity_price: 19.5, quantity: 2},
    #   %{description: "Açaí", category: :sobremesa, unity_price: "15.0", quantity: 1}
    # ]

    # Exlivery.create_or_update_order(%{user_cpf: "08799621789", items:  items})
    # OrderAgent.list_all
    # Report.create()
    # OrderAgent.get("319585c6-8886-4ae9-a27c-a470e7c77914")
    # =======================================================================

    #   test "when all params are valid, saves the order", %{
    #     user_cpf: cpf,
    #     item1: item1,
    #     item2: item2
    #   } do
    #     params = %{user_cpf: cpf, items: [item1, item2]}
    #     response = CreateOrUpdate.call(params)
    #     assert {:ok, _uuid} = response
    #   end

    #   test "when there is no user with given cpf, returns an error", %{item1: item1, item2: item2} do
    #     params = %{user_cpf: "123456789", items: [item1, item2]}
    #     response = CreateOrUpdate.call(params)
    #     assert {:ok, _uuid} = response
    #   end

    #   test "when there are invalid params, returns an error" do
    #     # params = %{user_cpf: "123456789", items: [item1, item2]}
    #     # response = CreateOrUpdate.call(params)
    #     # expected_response = {:error, "User not found"}
    #     # assert response == expected_response
    #   end
  end
end
