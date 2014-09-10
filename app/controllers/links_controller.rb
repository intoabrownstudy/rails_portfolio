class LinksController < ApplicationController
  
  def index
    @links = Link.all
  end
  
  def new
    link = Link.new
  end

  def create
    link = Link.new(params[:link])

    if @link.save
      "Yaaaay!"
    else
      "ERRRRORRRR"
    end
  end

  def create
    @link = Link.new(params[:link])

    if @link.save
      redirect_to links_path #the "index" action, aliased in our routes folder as "links"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/links/new
    end
  end

  def show
      @link = Link.find(params[:id])
    end

end

end