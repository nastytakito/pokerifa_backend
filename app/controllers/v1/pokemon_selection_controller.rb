class V1::PokemonSelectionController < ApplicationController

  # before_action :set_user
  def index
    json_response PokemonSelection.all
  end

  def show
    json_response PokemonSelection.find params[:id]
  end

  def create

  end

  private
  def set_user
    @user = User.find_by(name: params[:name])
    if @user.nil?
      @user = User.create name: username
    end
    @user
  end
end
