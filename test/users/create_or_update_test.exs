defmodule Exlivery.Users.CreateOrUpdateTest do
  use ExUnit.Case
  alias Exlivery.Users.CreateOrUpdate
  alias Exlivery.Users.Agent, as: UserAgent

  describe "call/1" do
    setup do
      UserAgent.start_link(:ok)
      :ok
    end

    test "when all params are valid, saves the user" do
      params = %{
        name: "Carlos",
        address: "Rua Elixir",
        email: "email@mail.com",
        cpf: "11111111100",
        age: 25
      }

      response = CreateOrUpdate.call(params)
      expected_response = {:ok, "User created or updated successfully"}
      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      params = %{
        name: "Carlos",
        address: "Rua Elixir",
        email: "email@mail.com",
        cpf: "11111111100",
        age: 10
      }

      response = CreateOrUpdate.call(params)
      expected_response = {:error, "Invalid parameters"}
      assert response == expected_response
    end
  end
end
