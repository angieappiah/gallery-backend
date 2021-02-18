Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :galleries do
      resources :pieces
      end
      resources :pieces
      resources :galleries
    end
  end


end

#fetch(`http://localhost:3000/api/v1/pieces`)