Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ar/ do
    root "pages#index"
    devise_for :users, :controllers => { :registrations => "users/registrations" }
    get 'dashboard' => 'student_dashboard#index'
    get 'membership' => 'student_dashboard#membership'
    get 'instruction' => 'student_dashboard#instruction'
    get 'uploaded_files' => 'student_dashboard#uploaded_files'
    get 'chat' => 'chat#index'
    get 'unm_dashboard' => 'unm_dash#index'
    resources :conversations, only: [:create] do
      resources :messages, only: [:create]
        member do
          post :close
      end
    end
    resources :st_profiles
    resources :uni_profiles
    resources :unm_uns
  end
end