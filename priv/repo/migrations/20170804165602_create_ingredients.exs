defmodule IncognitoBackend.Repo.Migrations.CreateIngredients do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string, null: false, default: ""
      add :description, :string, null: false, default: ""

      timestamps()
    end

  end
end
