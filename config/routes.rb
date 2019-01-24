Rails.application.routes.draw do
  root 'dashboard#index'
  get 'search', to: 'search#search'
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  get 'summon_modal', to: 'search#summon_modal', as: :summon_modal
  post 'create_new_item', to:'search#create_item', as: :create_item
  post 'new_meal_card', to: 'dashboard#new_card'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
