class ArticleController < ApplicationController

  def articleHome

   @articles = Article.new
  end
  def createArticle
               @articles = Article.new(params_article)

  end

  private
  def params_article
      params.require(:article).permit(:title, :content)
  end
end
