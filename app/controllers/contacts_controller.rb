class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to contacts_path 
    else
      render "new" 
  end

  def show
      @contact = Contact.find(params[:id])
    end
  end
end


#   def edit
#     @contact = Contact.find(params[:id])
#   end
#
#   def update
#     @contact = Contact.find(params[:id])
#     if @contact.update_attributes(params[:contact])
#       render "detail"
#     else
#       render "edit"
#     end
#   end
#
#   def detail
#     @contact = Contact.find(params[:id])
#   end
#
#   def delete
#     Contact.find(params[:id]).delete
#     redirect_to contact_forms_path
#   end
# end