Portfolio::Application.routes.draw do
  
  #user routes
  
  get "home" => 'pages#welcome', :as => "welcome"
  
  get "users/index" => 'users#index', :as => "users"
  get "user/new" => 'user#new', :as => "new_user_link"
  
  post "users" => 'users#create'
  get "users/:id" => 'users#show', :as => "user"
  
  #class_project routes
  
  get "class_projects" => 'class_projects#index', :as => "class_projects"
  get "class_projects/:id" => 'class_projects#show', :as => "class_project"
  
  get "class_project/new" => 'class_project#new', :as => "new_class_project_link"  
  post "class_projects" => 'class_projects#create', :as => 'create_class_project'
  
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
  
end


