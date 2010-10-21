CucumberWebsocketExample::Application.routes.draw do
  resources :users, :only => [:index, :new, :create]

  root :to => 'Users#new'
end
