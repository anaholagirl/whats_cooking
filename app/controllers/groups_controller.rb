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
    binding.pry
    if @group.save
      flash[:notice] = "New Category has been created in the Cookbook!"
      redirect_to user_group_path(@user)
    else
      render 'new'
    end
  end

  def show
    @group = Group.find(params[:user_id])
  end

  def edit
    @group = Group.find(params[:user_id])
  end

  def update
    @group = Group.find(params[:user_id])
    if @group.update(group_params)
      flash[:notice] = "Your Category has been updated"
      redirect_to user_group_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:user_id])
    @group.destroy
      flash[:notice] = "Your Category has been removed from the Cookbook!"
      redirect_to user_groups_path(@user)
  end

private
  def group_params
    params.require(:group).permit(:name).merge(user_id: current_user.id)
  end
end

