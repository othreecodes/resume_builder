defmodule ResumeBuilder.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :password, :string
    field :first_name, :string
    field :last_name, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :password,:first_name,:last_name])
    |> validate_required([:username, :password])
  end
end
