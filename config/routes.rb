Slinters::Application.routes.draw do
 
 devise_for :users

 root :to => "application#index"
 match '/auth/facebook/callback' => 'service#create'
 resources :service, :only => [:index, :create]
end
