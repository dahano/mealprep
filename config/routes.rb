Rails.application.routes.draw do
  root 'application#index'
  get 'search', to: 'search#search'
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  get 'summon_modal' => 'search#summon_modal', as: :summon_modal
  post 'create_new_item' => 'search#create_item', as: :create_item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
