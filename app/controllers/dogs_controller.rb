class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
    @owners = Owner.all 
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.create!(dog_params)
    redirect_to dog_path(@dog)
  end

  def edit
    @dog = Dog.find(params[:id])
    @owners = Owner.all 
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def delete
    @dog = Dog.find(params[:id])
    @owner = @dog.owner
    @dog.destroy
    redirect_to owner_path(@owner)
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :gender, :age, :breed, :owner_id)
  end 
end
