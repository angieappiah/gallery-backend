Rails.application.routes.draw do
resources :artists
  namespace :api do
    namespace :v1 do
      resources :galleries do
      resources :pieces
      end
    end
  end


end

#fetch(`http://localhost:3000/api/v1/pieces`)