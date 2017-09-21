Rails.application.routes.draw do
  post 'auth/login' => 'user_token#create'
  get 'users/current' => 'users#show_current'
  devise_for :users, :controllers => {registrations: 'users/registrations'}
  resources :users , :except => [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
