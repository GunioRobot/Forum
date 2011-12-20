class ForumPermissionsController < ApplicationController
  def index
    @forum_permissions = ForumPermission.all
  end

  def show
    @forum_permission = ForumPermission.find(params[:id])
  end

  def new
    @forum_permission = ForumPermission.new
  end

  def create
    @forum_permission = ForumPermission.new(params[:forum_permission])
    if @forum_permission.save
      flash[:notice] = "Successfully created forum permission."
      redirect_to @forum_permission
    else
      render :action => 'new'
    end
  end

  def edit
    @forum_permission = ForumPermission.find(params[:id])
  end

  def update
    @forum_permission = ForumPermission.find(params[:id])
    if @forum_permission.update_attributes(params[:forum_permission])
      flash[:notice] = "Successfully updated forum permission."
      redirect_to @forum_permission
    else
      render :action => 'edit'
    end
  end

  def destroy
    @forum_permission = ForumPermission.find(params[:id])
    @forum_permission.destroy
    flash[:notice] = "Successfully destroyed forum permission."
    redirect_to forum_permissions_url
  end
end
