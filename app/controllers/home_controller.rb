class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
  end
  
  def auth
    @day = Date.today
    @foods = current_user.foods.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @workouts = current_user.workouts.where('start BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @feelings = current_user.weathers.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @sleeps = current_user.sleeps.where('`end` BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @sleeps = @sleeps + current_user.sleeps.where('start BETWEEN ? AND ?',  DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @sleeps = @sleeps.uniq
    @healths = current_user.healths.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @events = current_user.healths.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
    @notes = current_user.notes.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all

    respond_to do |format|
      format.html
    end
  end
  
end