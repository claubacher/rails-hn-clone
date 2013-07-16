HnClone::Application.routes.draw do

  root to: "posts#index"

  resources :sessions, :only => [:new, :create, :destroy]

  resources :users
  resources :posts do
    resources :comments
  end

end
