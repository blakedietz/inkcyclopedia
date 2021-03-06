# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# It is also run when you use the command `mix ecto.setup`
#

users = [
  %{email: "jane.doe@example.com", password: "password"},
  %{email: "john.smith@example.org", password: "password"},
  %{email: "blakedietz@gmail.com", password: "password"}
]

for user <- users do
  {:ok, user} = InkcyclopediaApi.Accounts.create_user(user)
  InkcyclopediaApi.Accounts.confirm_user(user)
end
