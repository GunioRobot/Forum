class ThreadsController < ApplicationController
  load_and_authorize_resource :nested => :forum

  def index
    @threads = Thread.all
  end

  def show
    @thread = Thread.find(params[:id])
  end

  def new
    @thread = Thread.new
  end

  def create
    @thread = Thread.new(params[:thread])
    if @thread.save
      flash[:notice] = "Successfully created thread."
      redirect_to @thread
    else
      render :action => 'new'
    end
  end

  def edit
    @thread = Thread.find(params[:id])
  end

  def update
    @thread = Thread.find(params[:id])
    if @thread.update_attributes(params[:thread])
      flash[:notice] = "Successfully updated thread."
      redirect_to @thread
    else
      render :action => 'edit'
    end
  end

  def destroy
    @thread = Thread.find(params[:id])
    @thread.destroy
    flash[:notice] = "Successfully destroyed thread."
    redirect_to threads_url
  end
end
