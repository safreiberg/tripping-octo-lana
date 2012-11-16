class HealthsController < ApplicationController
  def index
  end

  def show
    @health = Health.find_by_id(params[:id])
    if @health.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Health)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def edit
    @health = Health.find_by_id(params[:id])
    if @health.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Health)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def update
    health = Health.find(params[:id])
    if health.user == current_user || user.is_admin?
      if health.update_attributes(params[:health])
        flash[:notice] = "successfully updated health"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Health)
      flash[:notice] = "you have to own that health!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    health = Health.find_by_id(params[:id])
    if health.user == current_user || user.is_admin?
      health.destroy
      flash[:notice] = "successfully destroyed health"
    else
      flash[:notice] = "you have to own that health!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def new
    @health = Health.new
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @health = Health.new(params[:health])
    @health.user_id = current_user.id
    if @health.save
      flash[:notice] = "successfully added health!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
  
end
