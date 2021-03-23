defmodule Test do
    alias Exlivery.Users.User 
    def test do
        User.build("wagner", "wagner@mail.com", "08799621789", 38)
    end
end