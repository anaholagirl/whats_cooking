class PhotosController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @photo = Photo.new
  end

  def create
    @user = User.find(session[:user_id])
    @recipe = Recipe.find(params[:recipe_id])
    @photo = @recipe.photos.create(photo_params)
    if @photo.valid?
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

private
  def photo_params
    params.require(:photo).permit(:name, :user_id, :recipe_id, :image).merge(:name => @recipe.name, :user_id => current_user.id)
  end
end

