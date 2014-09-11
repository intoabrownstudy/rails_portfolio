class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to articles_path

    else
      render "new"
    end
end  

  def show
    @article = Article.find(params[:id])
    @like = Like.new
    
    @all_likes = Like.where({article_id: params[:id]})
    
    @ip = true

    @all_likes.each do |a|
      if a.ip == request.remote_ip
        @ip = false
  end
end

#    def edit
#      @article = Article.find(params[:id])
#    end
#
#   def update
#     @article = Article.find(params[:id])
#
#     if @article.update_attributes(params[:article])
#       render "detail"
#     else
#       render "edit"
#     end
#   end
#
#   def detail
#     @article = Article.find(params[:id])
#   end
#
#   def delete
#     Article.find(params[:id]).delete
#     redirect_to articles_path
#   end

end
end

