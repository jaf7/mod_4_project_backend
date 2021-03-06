Rails.application.routes.draw do
  resources :projects, only: [:index, :create, :update]
  get '/', to: 'projects#index'
  resources :messages, only: [:create]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
