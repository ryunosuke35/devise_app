Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :blogs
  # root to: "blog#index"
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
#  end
end
