class WalkersController < ApplicationController
  def index
    @walkers = Walker.all 
  end

  def new
    @walker = Walker.new 
  end

  def show
    @walker = Walker.find(params[:id])
  end

  def create
    @walker = Walker.create!(walker_params)
    redirect_to walker_path(@walker)
  end

  def edit
    @walker = Walker.find(params[:id])
  end

  def update
    @walker - Walker.find(params[:id])
    @walker.update(walker_params)
    redirect_to walker_path(@walker)
  end

  def delete
    @walker = Walker.find(params[:id])
    @walker.destroy
    redirect_to walkers_path
  end

  private

  def walker_params
    params.require(:walker).permit(:name, :age, :rating)
  end 
end
