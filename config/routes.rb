Rails.application.routes.draw do
  resources :users
  resources :avatars, only: [ :create ] do
    member do
      get :image_data
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
