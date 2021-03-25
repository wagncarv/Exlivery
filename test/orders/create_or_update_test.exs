defmodule Exlivery.Orders.CreateOrUpdateTest do
  use ExUnit.Case
  alias Exlivery
  import Exlivery.Factory
  alias Exlivery.Orders.CreateOrUpdate
  alias Exlivery.Users.Agent, as: UserAgent

  describe "call/1" do
    setup do
      cpf = "11111111100"
      user = build(:user, cpf: cpf)
      Exlivery.start_agents()
      UserAgent.save(user)

      item1 = %{description: "pizza peperoni", category: :pizza, unity_price: 25.5, quantity: 1}
      item2 = %{description: "Açaí", category: :sobremesa, unity_price: "15.0", quantity: 1}

      {:ok, user_cpf: cpf, item1: item1, item2: item2}
    end

    test "when all params are valid, saves the order", %{
      user_cpf: cpf,
      item1: item1,
      item2: item2
    } do
      params = %{user_cpf: cpf, items: [item1, item2]}
      response = CreateOrUpdate.call(params)
      assert {:ok, _uuid} = response
    end

    test "when there is no user with given cpf, returns an error", %{item1: item1, item2: item2} do
      params = %{user_cpf: "123456789", items: [item1, item2]}
      response = CreateOrUpdate.call(params)
      assert {:error, "User not found"} = response
    end

    test "when there are invalid itens, returns an error", %{
      user_cpf: cpf,
      item1: item1,
      item2: item2
    } do
      params = %{user_cpf: cpf, items: [%{item1 | quantity: 0}, item2]}
      response = CreateOrUpdate.call(params)
      assert {:error, "Invalid items"} = response
    end

    test "when there are no itens, returns an error", %{user_cpf: cpf} do
      params = %{user_cpf: cpf, items: []}
      response = CreateOrUpdate.call(params)
      assert {:error, "Invalid parameters"} = response
    end
  end
end
