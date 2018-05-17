Rails.application.routes.draw do
  
  get '/' => 'home#index'

  get '/booth/:id' => 'booth#info'
  get '/booth/edit/:id'=>'booth#edit'
  post '/booth/update/:id'=> 'booth#update'
  
  get'/fuck' => 'booth#fuck'
  get'/fucking'=> 'comments#fucking'
  
  get '/:id/destroy' =>'comments#destroy'
  
  get '/likelion' => 'booth#likelion'
  
  resources :booths do
      resources :comments, only: [:create]
  end

end
