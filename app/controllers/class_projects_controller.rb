class ClassProjectsController < ApplicationController

    def index
      @class_projects = ClassProject.all
    end
    
    def new
      class_project = ClassProject.new
    end
  
    def create
      class_project = ClassProject.new(params[:class_project])

      if @class_project.save
        "Yaaaay!"
      else
        "ERRRRORRRR"
      end
    end
  
    def create
      @class_project = ClassProject.new(params[:class_project])

      if @class_project.save
        redirect_to class_projects_path #the "index" action, aliased in our routes folder as "class_projects"
      else
        #1. Display the form
        #2. Show all relevant errors
        render "new" #refers to app/views/class_projects/new
      end
    end
  
    def show
        @class_project = ClassProject.find(params[:id])
      end
  
  end

