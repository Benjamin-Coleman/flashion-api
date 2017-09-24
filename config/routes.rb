Rails.application.routes.draw do
 namespace :api do
    namespace :v1 do
    	get '', to: 'controller#method'
    	# resources :users, only: [:create, :show]
    	post '/signup', to: 'users#create'
    	post '/login', to: 'auth#create'
    	post '/lookbooks/new', to: 'lookbooks#create'
    	get '/lookbooks/:id', to: 'lookbooks#show'
    	get '/currentuser', to: 'users#show'
    	post '/testimageupload', to: 'images#upload'
    end
  end
end
