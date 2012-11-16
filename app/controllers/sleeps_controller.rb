class SleepsController < ApplicationController
  def index
  end

  def show
    @sleep = Sleep.find_by_id(params[:id])
    if @sleep.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Sleep)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def edit
    @sleep = Sleep.find_by_id(params[:id])
    if @sleep.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Sleep)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def update
    sleep = Sleep.find(params[:id])
    if sleep.user == current_user || user.is_admin?
      if sleep.update_attributes(params[:sleep])
        flash[:notice] = "successfully updated sleep"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Sleep)
      flash[:notice] = "you have to own that sleep!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    sleep = Sleep.find_by_id(params[:id])
    if sleep.user == current_user || user.is_admin?
      sleep.destroy
      flash[:notice] = "successfully destroyed sleep"
    else
      flash[:notice] = "you have to own that sleep!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def new
    @sleep = Sleep.new
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @sleep = Sleep.new(params[:sleep])
    @sleep.user_id = current_user.id
    if @sleep.save
      flash[:notice] = "successfully added sleep!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
