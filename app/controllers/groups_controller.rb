class GroupsController < ApplicationController

  def show
    @groups = Group.find(params[:id])
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
  end

  def update
  end
  
  private

  def group_params
    params.require(:group).permit(:image, :group_name, :area_id, :homepage_url, :year_id, user_ids: [])
  end

end