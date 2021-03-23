defmodule Exlivery.Factory do
  use ExMachina
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
end

