Rails.application.routes.draw do
  root :to => 'subgenres#index'

  resources :subgenres do
    resources :animes
  end
end
