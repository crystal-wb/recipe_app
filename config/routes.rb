Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/home'=>"application#home"
    get '/search'=>'application#search'
    get '/'=>"application#home"
    get '/create'=>"application#create"
    get '/change'=>'application#change'
    get "/update"=>'application#update'
    get "/add"=>'application#add'
end
