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

        respond_to do |format|
            if @article.save
                format.html { redirect_to entry_url(@article), notice: "Article was successfully created." }
                format.json { render :show, status: :created, location: @article }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @article.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit
    end
    
    def update
        respond_to do |format|
          if @article.update(article_params)
            format.html { redirect_to entry_url(@article), notice: "Article was successfully updated." }
            format.json { render :show, status: :ok, location: @article }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @article.errors, status: :unprocessable_entity }
          end
        end
    end
    
    
    def destroy
        @article.destroy
    
        respond_to do |format|
          format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
          format.json { head :no_content }
        end
    end

    private

    def article_params
        params.require(:article).permit(:name, :body)
    end

end
