class ArticlesController < ApplicationController
  def index
  	@articles = Article.all 
  end
  def create
  	@article = Article.new(article_params)
  	if @article.save
  	  render json: @article
  	else
  	  render json: @article.errors,status: :unprocessable_entity
  	end

end
    
  private

  def article_params
  	params.require(:article).permit(:title,:amount,:date)
  end
end
