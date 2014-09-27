class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @user = User.find(session[:user_id])
    @favorite = Favorite.new
  end

  def create
    @user = User.find(session[:user_id])
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.new(favorite_params)
    if @favorite.save
      flash[:notice] = "This recipe is now a favorite!"
      redirect_to favorites_path
    else
      render 'new'
    end
  end

private
  def favorite_params
      params.require(:favorite).permit(:recipe_id, :user_id)
  end
end

