Rails.application.routes.draw do

  resources :instruments
  resources :bands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :bands do
    resources :instruments
  end

end
