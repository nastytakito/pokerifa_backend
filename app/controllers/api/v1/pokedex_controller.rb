module Api
  module V1
    class PokedexController < ApplicationController

      def index
        @pokedex = Pokedex.all
      end

      def show
        pokedex = Pokedex.find(params[:id])
        json_response(pokedex)
      end
    end
  end
end