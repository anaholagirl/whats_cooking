class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @user = User.find(session[:user_id])
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = @recipe.favorites.new(favorite_params)
    if @favorite.save
      flash[:notice] = "This recipe is now a favorite!"
      redirect_to recipe_favorites_path(@recipe)
    else
      render 'new'
    end
  end

private
  def favorite_params
    params.permit(:recipe_id, :user_id).merge(:user_id => current_user.id)
  end
end

