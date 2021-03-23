defmodule Exlivery.Users.UserTest do
  alias Exlivery.Users.User
  use ExUnit.Case


 describe "build/5" do
  test "when all params are valid, returns the user" do
    response = User.build("Rua Elixir", "Carlos", "carlos@mail.com", "01234567890", 30)
    expected_response =
    {:ok,
      %Exlivery.Users.User{
        address: "Rua Elixir",
        age: 30,
        cpf: "01234567890",
        email: "carlos@mail.com",
        name: "Carlos"
      }
    }
    assert response == expected_response
  end

  test "when there are invalid params, returns an error" do
    response = User.build("Rua Pro", "Pierre", "pierre@mail.com", "00123456789", 15)
    expected_response = {:error, "Invalid parameters"}
    assert response == expected_response
  end
 end
end
