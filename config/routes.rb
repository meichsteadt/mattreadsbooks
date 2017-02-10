Rails.application.routes.draw do
  root :to => 'landing#index'

  resources :books do
    resources :reviews
  end
end
