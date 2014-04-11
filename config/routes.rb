ArtsApi::Application.routes.draw do

  resources :galleries, only: [:index, :show]

end
