module Api
  module V1
    class PokemonSelectionController < ApplicationController

      # before_action :set_user
      def index
        json_response PokemonSelection.all
      end

      def show
        json_response PokemonSelection.find params[:id]
      end

      def create
        @pokemon_selection = PokemonSelection.new(pokemon_selection_params)
        save @pokemon_selection
      end

      private
      def set_user
        @user = User.find_by(name: params[:name])
        if @user.nil?
          @user = User.create name: username
        end
        @user
      end

      def pokemon_selection_params
        params.require(:pokemon_selection).permit(:pokedex_id, :user_id)
      end

    end
  end
end
