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

  # GET /articles/:id/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  # PUT /articles/:id
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  # DELETE /articles/:id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
    # Strong parameters: We have to whitelist our controller parameters to prevent wrongful mass assignment.
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
