Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ar/ do
    root "pages#index"
    devise_for :users, :controllers => { :registrations => "users/registrations" }
    resources :conversations, only: [:create] do
      resources :messages, only: [:create]
        member do
          post :close
      end
    end
    resources :st_profiles
    resources :university_profiles
    resources :universities
    resources :st_ba_files
    resources :st_tr_files
    resources :st_phd_files
    resources :st_ma_files
    resources :faculties

    # custom routes
    get 'st_dashboard' => 'st_dashboard#index'
    get 'membership' => 'st_dashboard#membership'
    get 'instruction' => 'st_dashboard#instruction'
    get 'uploaded_files' => 'st_dashboard#uploaded_files'
    get 'chat' => 'chat#index'
    get 'unm_dashboard' => 'unm_dash#index'
    get 'unm_dash/update_cities'
    get 'unm_dash/update_faculties'
    get 'unm_dash/update_faculties1'
    get 'unm_dash/update_faculties2'
    get 'unm_dash/update_faculties3'
    get 'create_file' => 'st_dashboard#create_file'
    # 
  end
end