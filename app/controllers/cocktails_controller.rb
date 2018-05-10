class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
   @cocktail = Cocktail.new
  end

   def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end


#   def destroy
#     @cocktail.destroy
#   end

private

#   def set_cocktail
#     @cocktail = Cocktail.find(params[:id])
#   end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


 # def create
 #    @article = Article.new(article_params)

 #    if @article.save
 #      redirect_to @article, notice: 'Article was successfully created.'
 #    else
 #      render :new
 #    end
 #  end

 #  # PATCH/PUT /articles/1
 #  def update
 #    if @article.update(article_params)
 #      redirect_to @article, notice: 'Article was successfully updated.'
 #    else
 #      render :edit
 #    end
 #  end

 #  # DELETE /articles/1
 #  def destroy
 #    @article.destroy
 #    redirect_to articles_url, notice: 'Article was successfully destroyed.'
 #  end

 #  private
 #    # Use callbacks to share common setup or constraints between actions.
 #    def set_article
 #      @article = Article.find(params[:id])
 #    end

 #    # Only allow a trusted parameter "white list" through.
 #    def article_params
 #      params.require(:article).permit(:title, :content)
 #    end


















end
