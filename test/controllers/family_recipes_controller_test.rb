require 'test_helper'

class FamilyRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_recipe = family_recipes(:one)
  end

  test "should get index" do
    get family_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_family_recipe_url
    assert_response :success
  end

  test "should create family_recipe" do
    assert_difference('FamilyRecipe.count') do
      post family_recipes_url, params: { family_recipe: { long_description: @family_recipe.long_description, region: @family_recipe.region, short_description: @family_recipe.short_description, title: @family_recipe.title } }
    end

    assert_redirected_to family_recipe_url(FamilyRecipe.last)
  end

  test "should show family_recipe" do
    get family_recipe_url(@family_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_recipe_url(@family_recipe)
    assert_response :success
  end

  test "should update family_recipe" do
    patch family_recipe_url(@family_recipe), params: { family_recipe: { long_description: @family_recipe.long_description, region: @family_recipe.region, short_description: @family_recipe.short_description, title: @family_recipe.title } }
    assert_redirected_to family_recipe_url(@family_recipe)
  end

  test "should destroy family_recipe" do
    assert_difference('FamilyRecipe.count', -1) do
      delete family_recipe_url(@family_recipe)
    end

    assert_redirected_to family_recipes_url
  end
end
