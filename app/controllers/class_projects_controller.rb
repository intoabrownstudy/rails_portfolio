class ClassProjectsController < ApplicationController

    def index
      @class_projects = ClassProject.all
    end
    
    def new
      @class_project = ClassProject.new
    end
  
    def create
      @class_project = ClassProject.new(params[:class_project])

      if @class_project.save
        redirect_to class_projects_path 
      else
        
        render "new" 
      end
    end
  
    def show
        @class_project = ClassProject.find(params[:id])
      end
  
  end

    def edit
      @class_project = ClassProject.find(params[:id])
    end
  
    def update
        @class_project = ClassProject.find(params[:id])
    
        if @class_project.update_attributes(params[:project])
          redirect_to class_project_path(@project.id)
        else
          render "edit"
        end
      end
    
      def destroy
        @class_project = ClassProject.find(params[:id])
        if @class_project.delete
          flash[:notice] = "Project deleted."
          redirect_to class_projects_path
        else
          render 'edit'
        end
      end
  end