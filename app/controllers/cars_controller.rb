class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} has been created"
    redirect_to root_path,
      notice: creation_message
    @car.save
  end

  def update
    @car.update(car_params)
    update_message = "#{@car.year} #{@car.make} #{@car.model} has been updated"
    redirect_to root_path,
      notice: update_message
  end

  private
  def car_params
    params.require(:car).permit(:make, :model, :year, :price)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end