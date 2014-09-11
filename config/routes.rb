Portfolio::Application.routes.draw do
  
  root :to => 'pages#welcome' #name is already set to "root"
  
  get "home" => 'pages#welcome', as: "home"
  
  #user routes
    
  get "users/index" => 'users#index', :as => "users"
  get "user/new" => 'user#new', :as => "new_user_link"
  
  post "users" => 'users#create'
  get "users/:id" => 'users#show', :as => "user"
  
  #class_project routes
  
  get "/class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
  
  get "/class_project/new" => 'class_project#new', :as => "new_class_project_link"  
  post "/class_projects" => 'class_projects#create', :as => 'create_class_project'
  
  #get "/projects"            => 'class_projects#index',  :as => "class_projects"
  # get "/projects/new"        => 'class_projects#new',    :as => "new_project"
#   post "/projects"           => 'class_projects#create'
#   get "/projects/:id/edit"   => 'class_projects#edit',   :as => "edit_project"
#   put "/projects/:id"        => 'class_projects#update'
#   get "projects/:id"         => 'class_projects#detail', :as => "class_project"
#   post "projects/:id/delete" => 'class_projects#delete'
  
  #link routes
  
  get "links" => 'links#index', :as => "links"
  get "links/:id" => 'links#show', :as => "link"
  
  get "link/new" => 'link#new', :as => "new_link_link"  
  post "links" => 'links#create', :as => 'create_link'
  
  #contact routes
  
  get "contact" => 'contacts#index', :as => "contacts"
  get "contacts/:id" => 'contacts#show', :as => "contact"
  
  get "contact/new" => 'contact#new', :as => "new_contact_link"  
  post "contacts" => 'contacts#create', :as => 'create_contact'
  
  #article routes
  
  get "article" => 'articles#index', :as => "articles"
  get "articles/:id" => 'articles#show', :as => "article"
  
  get "article/new" => 'article#new', :as => "new_article_link"  
  post "articles" => 'articles#create', :as => 'create_article'
  
end

