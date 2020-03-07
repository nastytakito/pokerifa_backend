require 'test_helper'

module Api
  module V1
    class PokemonSelectionControllerTest < ActionDispatch::IntegrationTest
      test "should get index" do
        get api_v1_pokemon_selection_index_url
        assert_response :success
      end

      test "should get show" do
        get api_v1_pokemon_selection_url 2
        assert_equal 2, json_response['id']
        assert_response :success
      end

      test "should create new selection" do
        prev_total = PokemonSelection.all.size
        post(api_v1_pokemon_selection_index_url, params: {
            pokemon_selection: {
                pokedex_id: Pokedex.take.id,
                user_id: User.take.id
            }
        }, as: :json)
        puts json_response

        assert_equal prev_total+1, PokemonSelection.all.size
        assert_response :success
      end


      test "should save user first if it doesn't exist" do
        # asd = post v1_pokemon_selection_url, params
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
  end
end
