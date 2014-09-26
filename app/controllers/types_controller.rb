class TypesController < ApplicationController

  def index
    @types = Type.all
  end

  def new
    @user = User.find(session[:user_id])
    @type = Type.new
  end

  def create
    @user = User.find(session[:user_id])
    @type = @user.types.new(type_params)
    if @type.save
      flash[:notice] = "New Category has been created in the Cookbook!"
      redirect_to user_type_path(@user)
    else
      render 'new'
    end
  end

  def show
    @type = Type.find(session[:user_id])
  end

  def edit
    @type = Type.find(session[:user_id])
  end

  def update
    @type = Type.find(session[:user_id])
    if @type.update(type_params)
      flash[:notice] = "Your Category has been updated"
      redirect_to user_type_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @type = Type.find(session[:user_id])
    @type.destroy
      flash[:notice] = "Your Category has been removed from the Cookbook!"
      redirect_to user_types_path(@user)
  end

private
  def type_params
    params.require(:type).permit(:name).merge(:user_id => current_user.id)
  end
end

