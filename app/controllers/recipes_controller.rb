class RecipesController < ApplicationController
  respond_to :json
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    respond_with Recipe.all
  end

  def show
    respond_with Post.find(params[:id])
  end

  def create
    respond_with Recipe.create(recipe_params)
  end

  def update
    respond_with Recipe.update(params[:id], recipe_params)
  end

  def destroy
    respond_with Recipe.destroy(params[:id])
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :description, :user_id, :photo, :url)
    end
end
