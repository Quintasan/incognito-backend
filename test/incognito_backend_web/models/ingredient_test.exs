defmodule IncognitoBackend.Web.IngredientTest do
  use IncognitoBackend.DataCase

  alias IncognitoBackend.Web.Ingredient

  @valid_attrs %{name: "Galliano", description: "Likier powstający na bazie 70 ziół, pochodzący z Włoch."}
  @invalid_attrs %{name: "", description: "whatever"}

  test "changeset with valid attributes" do
    changeset = Ingredient.changeset(%Ingredient{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Ingredient.changeset(%Ingredient{}, @invalid_attrs)
    refute changeset.valid?
  end
end
