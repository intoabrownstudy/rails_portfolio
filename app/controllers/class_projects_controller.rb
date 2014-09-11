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


#    def edit
#      @class_projects = ClassProject.find(params[:id])
#    end
#
#    def update
#      @class_project = ClassProject.find(params[:id])
#
#      if @class_project.update_attributes(params[:class_project])
#        render "detail"
#      else
#        render "edit"
#      end
#    end
#
#    def detail
#      @class_project = ClassProject.find(params[:id])
#    end
#
#    def delete
#      ClassProject.find(params[:id]).delete
#      redirect_to class_projects_path
#    end
#
# end
