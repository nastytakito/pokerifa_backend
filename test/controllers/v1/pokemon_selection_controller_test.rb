require 'test_helper'

class V1::PokemonSelectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_pokemon_selection_index_url
    assert_response :success
  end

  test "should get show" do
    get v1_pokemon_selection_url 2
    assert_response :success
  end

  test "should get create" do
    get v1_pokemon_selection_index_url
    assert_response :success
  end


  test "should save user first if it doesn't exist" do
    asd = post v1_pokemon_selection_create, params
  end

  test "should find pokemon with pokedex_id before saving" do
    assert true
  end

  test "should save new pokemon selection" do
    assert true
  end

  def test_that_tacos_is_true
    tacos = true
    assert_equal tacos, true
  end

end
