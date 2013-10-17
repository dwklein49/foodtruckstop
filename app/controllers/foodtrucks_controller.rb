class FoodtrucksController < ApplicationController
  def index
    @foodtrucks = Foodtruck.all
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
  end

  def new
    @foodtruck = Foodtruck.new
  end

  def create
    @foodtruck = Foodtruck.new(params[:foodtruck])
    if @foodtruck.save
      flash[:notice] = "Your Foodtruck information was saved."
      redirect_to @foodtruck
    else
      flash[:error] = "There was an error saving the info about your Foodtruck. Please try again."
      render :new
    end
  end

  def edit
    @foodtruck = Foodtruck.find(params[:id])
  end
end
