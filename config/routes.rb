Rails.application.routes.draw do
  devise_for :users, :controllers => {
                          :registrations => 'users/registrations',
                          :sessions => 'users'
                        }
  root 'pages#index'
  resources :users, only: [:index, :show] do
    resources :pages, only: [:new, :create, :show, :edit, :delete]
  end
end
