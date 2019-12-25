class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.create(group_params)
    redirect_to current_user 
  end

  def edit
    @group = Group.find(params[:id]) 
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_path
    else
      redirect_to edit_group_path
    end
  end
  
  private

  def group_params
    params.require(:group).permit(:image, :group_name, :area_id, :homepage_url, :year_id, user_ids: [])
  end


end