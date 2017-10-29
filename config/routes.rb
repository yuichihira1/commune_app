Rails.application.routes.draw do

  devise_for :users, :controllers => {
                          :registrations => 'users/registrations',
                          :sessions => 'users/sessions'
                                      }
  root 'pages#index'
  resources :users, only: [:index, :show] do
    resources :pages
  end
end
