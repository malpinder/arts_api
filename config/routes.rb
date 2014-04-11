ArtsApi::Application.routes.draw do


  resources :galleries, only: [:index, :show] do
    resources :exhibitions, only: [:index]
  end
  resources :exhibitions, only: [:show]

end
