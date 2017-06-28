Rails.application.routes.draw do
  get 'chat' => 'chat#index'

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :conversations, only: [:create] do
  	resources :messages, only: [:create]
    member do
      post :close
    end
  end
  scope "(:locale)", locale: /en|ar/ do
    root "pages#index"
  end
end