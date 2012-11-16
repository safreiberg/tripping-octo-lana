class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find_by_id(params[:id])
    if @event.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Event)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def edit
    @event = Event.find_by_id(params[:id])
    if @event.user == current_user || user.is_admin?
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Event)
    end
    
    respond_to do |format|
      format.html
    end
  end

  def update
    event = Event.find(params[:id])
    if event.user == current_user || user.is_admin?
      if event.update_attributes(params[:event])
        flash[:notice] = "successfully updated event"
      else
        flash[:notice] = "looks like something went wrong"
      end
    else
      raise CanCan::AccessDenied.new("Not authorized!", :read, Event)
      flash[:notice] = "you have to own that event!"
    end
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    event = Event.find_by_id(params[:id])
    if event.user == current_user || user.is_admin?
      event.destroy
      flash[:notice] = "successfully destroyed event"
    else
      flash[:notice] = "you have to own that event!"
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def new
    @event = Event.new
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @event = Event.new(params[:event])
    @event.user_id = current_user.id
    if @event.save
      flash[:notice] = "successfully added event!"
    else
      flash[:notice] = "whoops, looks like something went wrong :("
    end
    
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
