class RecipesController < ApplicationController

  before_filter :authorize, only: [:edit, :update, :new, :create, :destroy]

  def index
    @recipes = Recipe.all
    @users = User.all
    if params[:search].blank? == false
      @recipes = Recipe.basic_search(params[:search])
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Your recipe has been added to the Cookbook!"
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:notice] = "Your recipe has been updated!"
      redirect_to recipe_path
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Your recipe has been removed from the Cookbook!"
    redirect_to root_path
  end

private
  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions,).merge(:user_id => current_user.id)
  end
end
