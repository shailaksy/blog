class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new
        @article.name = params[:name]
        @article.body = params[:body]

        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit
    end
    
    def update
    end
    
    def delete
    end

    private

    def article_params
        params.require(:article).permit(:name, :body)
    end

end
