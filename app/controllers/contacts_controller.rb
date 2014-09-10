class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    contact = Contact.new
  end

  def create
    contact = Contact.new(params[:contact])

    if @contact.save
      "Yaaaay!"
    else
      "ERRRRORRRR"
    end
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to contacts_path #the "index" action, aliased in our routes folder as "contacts"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/contacts/new
    end
  end

  def show
      @contact = Contact.find(params[:id])
    end

end

end
