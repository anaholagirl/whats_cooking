class FavoritesController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @favorites = Favorite.all
  end

  def new
    @user = User.find(session[:user_id])
    @recipe = Recipe.find(params[:id])
    @favorite = Favorite.new
  end

  def create
    @user = User.find(session[:user_id])
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.new(user_id: @user.id, recipe_id: @recipe.id)
    if @favorite.save
      flash[:notice] = "This recipe is now a favorite!"
      redirect_to recipe_favorites_path(@recipe)
    else
      render 'new'
    end
  end

private
  def favorite_params
    params.require(:favorite).permit(:recipe_id, :user_id).merge(:user_id => @user.id)
  end
end

