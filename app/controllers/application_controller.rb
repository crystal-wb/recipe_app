class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    def add
    end
    
    def create
        recipe=Recipe.new
        recipe.title=params['title']
        recipe.creator=params['creator']
        recipe.prep_time=params['prep_time']
        recipe.cook_time=params['cook_time']
        recipe.difficulty=params['difficulty']
        recipe.ingredients=params['ingredients']
        recipe.directions=params['directions']
        recipe.picture=params['picture']
        recipe.save
        redirect_to'/'
    end
    
    def home
    end
    
    def search
        title=params[:title]
        @recipes=Recipe.where("title like?", "%#{title}%")
    end
    
    def update
        @recipes=Recipe.find(params[:id])
    end

    def change
        @recipes=Recipe.find(params[:id])
        @recipes.title=params['title']
        @recipes.creator=params['creator']
        @recipes.prep_time=params['prep_time']
        @recipes.cook_time=params['cook_time']
        @recipes.difficulty=params['difficulty']
        @recipes.ingredients=params['ingredients']
        @recipes.directions=params['directions']
        @recipes.picture=params['picture']
        @recipes.save
        redirect_to'/'
    end
end