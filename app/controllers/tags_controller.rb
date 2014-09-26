class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @user = User.find(params[:user_id])
    @tag = @user.tags.new(tag_params)
    if @tag.save
      flash[:notice] = "You have successfully tagged this recipe!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @tag = Tag.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @tag = Tag.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:notice] = "Your tag has been updated!"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
      flash[:notice] = "Tag was deleted!"
      redirect_to user_path(@user)
  end

private
  def tag_params
    params.require(:tag).permit(:recipe_id, :group_id, :user_id).merge(:user_id => current_user.id)
  end
end
