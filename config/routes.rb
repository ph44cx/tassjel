Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  scope "(:locale)", locale: /en|ar/ do
    root "pages#index"
  end
end