Comicbin::Application.routes.draw do

  root "comics#index"

  get "/comics" => 'comics#index'
  get "/comics/:comic_id" => 'comics#show'
  get "/new_comic" => 'comics#new'
  get "comics/delete/:comic_id" => 'comics#rip'

  post "/comics" => 'comics#create'
  
end
