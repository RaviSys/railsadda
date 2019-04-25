class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    prepare_meta_tags(
      title: @article.title,
      description: @article.content,
      keywords: @article.keyword_list,
      twitter: {
        card: @article.title
        }
      )
  end

  def new
    @article = Article.new
  end

  def edit;end

  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote 
    @article = Article.find(params[:id])
    @article.upvote_by current_user
    redirect_to @article, flash: { success: 'Thank you for your response' }
  end  

  def downvote
    @article = Article.find(params[:id])
    @article.downvote_by current_user
    redirect_to @article, flash: { error: 'Thank you for your response' }
  end

  private

    def set_article
      @article = Article.friendly.find(params[:id])
    end

    def article_params
      params.require(:article).permit!
    end
end
