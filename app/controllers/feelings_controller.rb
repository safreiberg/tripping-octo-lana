class FeelingsController < ApplicationController
  def index
  end

  def show
    @feeling = Feeling.find_by_id(params[:id])
    if @feeling.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Feeling)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def edit
    @feeling = Feeling.find_by_id(params[:id])
    if @feeling.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Feeling)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def update
    feeling = Feeling.find(params[:id])
    if feeling.user == current_user || user.is_admin?
      if feeling.update_attributes(params[:feeling])
        flash[:notice] = "successfully updated feeling"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Feeling)
      flash[:notice] = "you have to own that feeling!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    feeling = Feeling.find_by_id(params[:id])
    if feeling.user == current_user || user.is_admin?
      feeling.destroy
      flash[:notice] = "successfully destroyed feeling"
    else
      flash[:notice] = "you have to own that feeling!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def new
    @feeling = Feeling.new
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @feeling = Feeling.new(params[:feeling])
    @feeling.user_id = current_user.id
    if @feeling.save
      flash[:notice] = "successfully added feeling!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

end
