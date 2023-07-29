require 'my_logger' #design pattern implementation

class ArticlesController < ApplicationController
  http_basic_authenticate_with name:"admin", password: "manager", except: [:index, :show]
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    #Method allows for the creation of a new game/article
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
      #The code belong is invoking the Singleton Design Pattern
      mylog = MyLogger.instance
      mylog.logInfo("new article, title:  "+ @article.title)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #Method allows the user to edit the entry of their game
    @article = Article.find(params[:id])
    mylog = MyLogger.instance
    mylog.logInfo("the body has been updated: " + @article.body + " [ORIGINAL BODY]")
  end

  def update
    #Method allows the user to update their current entry of their game
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    #Method that allows the user to destroy the entry of their game
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
