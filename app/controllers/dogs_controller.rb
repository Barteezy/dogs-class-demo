class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save!
    redirect_to dogs_path
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed)
  end
end
