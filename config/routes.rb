Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
  end
  get  '/about' => "pages#about"
  root "pages#home"
end
