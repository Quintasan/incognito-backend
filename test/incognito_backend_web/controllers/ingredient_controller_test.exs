defmodule IncognitoBackendWeb.IngredientControllerTest do
  use IncognitoBackendWeb.ConnCase

  alias IncognitoBackend.Web

  @create_attrs %{description: "some description", name: "some name"}
  @update_attrs %{description: "some updated description", name: "some updated name"}
  @invalid_attrs %{description: nil, name: nil}

  def fixture(:ingredient) do
    {:ok, ingredient} = Web.create_ingredient(@create_attrs)
    ingredient
  end

  describe "index" do
    test "lists all ingredients", %{conn: conn} do
      conn = get conn, ingredient_path(conn, :index)
      assert html_response(conn, 200) =~ "Listing Ingredients"
    end
  end

  describe "new ingredient" do
    test "renders form", %{conn: conn} do
      conn = get conn, ingredient_path(conn, :new)
      assert html_response(conn, 200) =~ "New Ingredient"
    end
  end

  describe "create ingredient" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post conn, ingredient_path(conn, :create), ingredient: @create_attrs

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ingredient_path(conn, :show, id)

      conn = get conn, ingredient_path(conn, :show, id)
      assert html_response(conn, 200) =~ "Show Ingredient"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, ingredient_path(conn, :create), ingredient: @invalid_attrs
      assert html_response(conn, 200) =~ "New Ingredient"
    end
  end

  describe "edit ingredient" do
    setup [:create_ingredient]

    test "renders form for editing chosen ingredient", %{conn: conn, ingredient: ingredient} do
      conn = get conn, ingredient_path(conn, :edit, ingredient)
      assert html_response(conn, 200) =~ "Edit Ingredient"
    end
  end

  describe "update ingredient" do
    setup [:create_ingredient]

    test "redirects when data is valid", %{conn: conn, ingredient: ingredient} do
      conn = put conn, ingredient_path(conn, :update, ingredient), ingredient: @update_attrs
      assert redirected_to(conn) == ingredient_path(conn, :show, ingredient)

      conn = get conn, ingredient_path(conn, :show, ingredient)
      assert html_response(conn, 200) =~ "some updated description"
    end

    test "renders errors when data is invalid", %{conn: conn, ingredient: ingredient} do
      conn = put conn, ingredient_path(conn, :update, ingredient), ingredient: @invalid_attrs
      assert html_response(conn, 200) =~ "Edit Ingredient"
    end
  end

  describe "delete ingredient" do
    setup [:create_ingredient]

    test "deletes chosen ingredient", %{conn: conn, ingredient: ingredient} do
      conn = delete conn, ingredient_path(conn, :delete, ingredient)
      assert redirected_to(conn) == ingredient_path(conn, :index)
      assert_error_sent 404, fn ->
        get conn, ingredient_path(conn, :show, ingredient)
      end
    end
  end

  defp create_ingredient(_) do
    ingredient = fixture(:ingredient)
    {:ok, ingredient: ingredient}
  end
end
