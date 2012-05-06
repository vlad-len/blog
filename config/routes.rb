Blog::Application.routes.draw do
  devise_for :admins

  devise_for :users

  root :to => "posts#index"
  resources :posts do
    resources :tweets
  end
    resource :profiles
  namespace :admin do
    resources :users do
    end
  end

end
