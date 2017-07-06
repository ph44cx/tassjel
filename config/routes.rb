Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ar/ do
    root "pages#index"
    devise_for :users, :controllers => { :registrations => "users/registrations" }
    get 'st_dashboard' => 'st_dashboard#index'
    get 'membership' => 'st_dashboard#membership'
    get 'instruction' => 'st_dashboard#instruction'
    get 'uploaded_files' => 'st_dashboard#uploaded_files'
    get 'chat' => 'chat#index'
    get 'unm_dashboard' => 'unm_dash#index'
    resources :conversations, only: [:create] do
      resources :messages, only: [:create]
        member do
          post :close
      end
    end
    resources :st_profiles
    resources :university_profiles
    resources :universities
    get 'unm_dash/update_cities'
  end
end