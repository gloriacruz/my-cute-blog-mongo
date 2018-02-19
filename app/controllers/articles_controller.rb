# A controller is simply a class that is defined to inherit from ApplicationController. It's inside this class that you'll define methods that will become the actions for this controller. These actions will perform CRUD operations on the articles within our system.

# order: index, show, new, edit, create, update and destroy

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render new
    end
  end


  private
    # Strong parameters: We have to whitelist our controller parameters to prevent wrongful mass assignment.
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
