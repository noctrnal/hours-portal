Rails.application.routes.draw do
  resources :hours
  namespace :api do
    namespace :v1 do
      resources :sheets, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :items, only: [:index, :show, :create, :update, :destroy]
      resources :sheet_managers, only: [:index, :show, :create, :update, :destroy]
      resources :hoursheets, only: [:index, :show, :create, :update, :destroy]
      resources :hours, only: [:index, :show, :create, :update, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
