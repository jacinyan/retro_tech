Rails.application.routes.draw do
  root to: "welcome#index"
  devise_for :users

  resources :categories do
    member do
      get :delete
    end 

    resources :items do
      member do
        get :delete
      end
    end
  end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
