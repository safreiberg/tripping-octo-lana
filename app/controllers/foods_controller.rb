class FoodsController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @food = Food.find_by_id(params[:id])
    if @food.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Food)
    end
    
    respond_to do |format|
      format.html
    end
  end
  
  def edit
    @food = Food.find_by_id(params[:id])
    if @food.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Food)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def destroy
    food = Food.find_by_id(params[:id])
    if food.user == current_user || user.is_admin?
      food.destroy
      flash[:notice] = "successfully destroyed food"
    else
      flash[:notice] = "you have to own that food!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def update
    food = Food.find(params[:id])
    if food.user == current_user || user.is_admin?
      if food.update_attributes(params[:food])
        flash[:notice] = "successfully updated food"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Food)
      flash[:notice] = "you have to own that food!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def index
  end

  def create
    @food = Food.new(params[:food])
    @food.user_id = current_user.id
    if @food.save
      flash[:notice] = "successfully added food!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end    
  end

  def new
    @food = Food.new
    
    respond_to do |format|
      format.html
    end
  end
end
