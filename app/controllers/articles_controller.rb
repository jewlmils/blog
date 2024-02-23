#require '../models/article'

class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    
    def index
       #CRUD Operations of Active Record 
       @articles = Article.all.order :id
    end

    def show
    end

    def new
       @article = Article.new
    end

    def create
       #binding.break

       if @article.save 
        redirect_to articles_path
       else
        render :new
       end
    end

    def edit
    end

    def update

        if @article.update(article_params) 
            redirect_to article_path(@article), notice: "Note is successfully updated"
        else
            render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @article.destroy!
        redirect_to articles_url, notice: "Article #{@article.id} was successfully destroyed", status: :see_other
      end      

    private

    def article_params
        params.require(:article).permit(:title, :body, :writer_name)
    end

    def set_article
        @article = Article.find(params[:id])
    end

end
