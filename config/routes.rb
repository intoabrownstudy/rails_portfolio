Portfolio::Application.routes.draw do
  
  root :to => 'pages#welcome' #name is already set to "root"
  
  get "home" => 'pages#welcome', as: "home"

  #user routes
  
  get "users" => 'users#index', :as => "users"
  get "users/new" => 'users#new', :as => "new_user" 
  get "users/:id" => 'users#show', :as => "user"
   
  post "users" => 'users#create', :as => 'create_user'
  
  #class_project routes

  get "class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/new" => 'class_projects#new', :as => "new_class_project" 
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
 
  post "class_projects" => 'class_projects#create', :as => 'create_class_project'

  #link routes
  
  get "links" => 'links#index', :as => "links"
  get "links/new" => 'links#new', :as => "new_link" 
  get "links/:id" => 'links#show', :as => "link"
   
  post "links" => 'links#create', :as => 'create_link'
  
  get "contacts" => 'contacts#index', :as => "contacts"
  get "contacts/new" => 'contacts#new', :as => "new_contact" 
  get "contacts/:id" => 'contacts#show', :as => "contact"
 
  post "contacts" => 'contacts#create', :as => 'create_contact'
  
  #article routes
  
  get "articles" => 'articles#index', :as => "articles"
  get "articles/new" => 'articles#new', :as => "new_article" 
  get "articles/:id" => 'articles#show', :as => "article"
   
  post "articles" => 'articles#create', :as => 'create_article'
  
  get "likes" => 'likes#index', as: 'likes'
  get 'likes/new' => 'likes#new', as: 'new_like'
  get 'likes/:id' => 'likes#show', as: 'like'
  
  post 'likes' => 'likes#create'
  
end

