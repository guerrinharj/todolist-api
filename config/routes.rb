Rails.application.routes.draw do
  root to: 'pages#home'
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :todos, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
