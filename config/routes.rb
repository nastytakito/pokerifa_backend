Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pokedex, only: %i[index show]
      resources :pokemon_selection, only: %i[index show create]
    end
  end
end
