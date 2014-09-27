class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @user = User.find(params[:user_id])
    @group = @user.groups.new(group_params)
    if @group.save
      flash[:notice] = "New Category has been created in the Cookbook!"
      redirect_to user_group_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @group = Group.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @group = Group.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash[:notice] = "Your Category has been updated"
      redirect_to user_group_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @group = Group.find(params[:id])
    @group.destroy
      flash[:notice] = "Your Category has been removed from the Cookbook!"
      redirect_to user_path(@user)
  end

private
  def group_params
    params.require(:group).permit(:name)
  end
end

