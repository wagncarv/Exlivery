defmodule Exlivery.Users.UserTest do
  use ExUnit.Case
  alias Exlivery.Users.User
  import Exlivery.Factory

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response =
        {:ok,
         %Exlivery.Users.User{
           address: "Rua Elixir",
           age: 30,
           cpf: "01234567890",
           email: "carlos@mail.com",
           name: "Carlos"
         }}

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response = User.build("Rua Pro", "Pierre", "pierre@mail.com", "00123456789", 15)
      expected_response = {:error, "Invalid parameters"}
      assert response == expected_response
    end
  end
end
