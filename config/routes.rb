Rails.application.routes.draw do
  root 'application#index'
  get 'search', to: 'search#search'
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  get 'create_item' => 'search#create_item', as: :create_item
  post 'create_item' => 'search#add_item', as: :create_item_modal
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
