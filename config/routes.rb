Rails.application.routes.draw do
  get 'dashboard' => 'student_dashboard#index'
  get 'membership' => 'student_dashboard#membership'
  get 'instruction' => 'student_dashboard#instruction'
  get 'uploaded_files' => 'student_dashboard#uploaded_files'

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