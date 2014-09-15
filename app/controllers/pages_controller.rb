class PagesController < ApplicationController
  skip_before_filter :authorize
  
  def home
    @pages = Pages.all
  end
end