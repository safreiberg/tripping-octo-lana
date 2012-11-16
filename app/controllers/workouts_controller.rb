class WorkoutsController < ApplicationController
  def index
  end

  def show
    @workout = Workout.find_by_id(params[:id])
    if @workout.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Workout)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def edit
    @workout = Workout.find_by_id(params[:id])
    if @workout.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Workout)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def update
    workout = Workout.find(params[:id])
    if workout.user == current_user || user.is_admin?
      if workout.update_attributes(params[:workout])
        flash[:notice] = "successfully updated workout"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Workout)
      flash[:notice] = "you have to own that workout!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    workout = Workout.find_by_id(params[:id])
    if workout.user == current_user || user.is_admin?
      workout.destroy
      flash[:notice] = "successfully destroyed workout"
    else
      flash[:notice] = "you have to own that workout!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def new
    @workout = Workout.new
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @workout = Workout.new(params[:workout])
    @workout.user_id = current_user.id
    if @workout.save
      flash[:notice] = "successfully added workout!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
