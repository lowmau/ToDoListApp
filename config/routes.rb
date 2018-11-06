Rails.application.routes.draw do
  resources :user_lists, only: [:index]
  resources :lists, only: [:index, :show] do
		resources :user_lists, only: :create
	end
	delete 'remove_list/:list_id', to: 'user_lists#remove_list', as: 'remove_list'
  root to: 'lists#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
