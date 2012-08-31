Slinters::Application.routes.draw do
 
 devise_for :users

 root :to => "application#index"
 match '/auth/:service/callback' => 'service#create'
 resources :service, :only => [:index, :create]
 
 
 match "/login" => "authorization#login"
 match "/register" => "authorization#register"
 
end
