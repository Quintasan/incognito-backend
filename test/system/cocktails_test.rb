require "application_system_test_case"

class CocktailsTest < ApplicationSystemTestCase
  setup do
    @cocktail = cocktails(:one)
  end

  test "visiting the index" do
    visit cocktails_url
    assert_selector "h1", text: "Cocktails"
  end

  test "creating a Cocktail" do
    visit cocktails_url
    click_on "New Cocktail"

    fill_in "Glassware", with: @cocktail.glassware
    fill_in "Ingredients", with: @cocktail.ingredients
    fill_in "Name", with: @cocktail.name
    fill_in "Signature", with: @cocktail.signature
    fill_in "Technique", with: @cocktail.technique
    click_on "Create Cocktail"

    assert_text "Cocktail was successfully created"
    click_on "Back"
  end

  test "updating a Cocktail" do
    visit cocktails_url
    click_on "Edit", match: :first

    fill_in "Glassware", with: @cocktail.glassware
    fill_in "Ingredients", with: @cocktail.ingredients
    fill_in "Name", with: @cocktail.name
    fill_in "Signature", with: @cocktail.signature
    fill_in "Technique", with: @cocktail.technique
    click_on "Update Cocktail"

    assert_text "Cocktail was successfully updated"
    click_on "Back"
  end

  test "destroying a Cocktail" do
    visit cocktails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cocktail was successfully destroyed"
  end
end
