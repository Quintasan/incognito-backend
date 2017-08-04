defmodule IncognitoBackend.Web.Ingredient do
  use Ecto.Schema
  import Ecto.Changeset
  alias IncognitoBackend.Web.Ingredient


  schema "ingredients" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Ingredient{} = ingredient, attrs) do
    ingredient
    |> cast(attrs, [:name, :description])
    |> validate_required([:name])
  end
end
