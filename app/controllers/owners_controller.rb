class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new 
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.valid?
      redirect_to owner_path(@owner)
    else 
      flash[:messages] = @owner.errors.full_messages
    redirect_to new_owner_path  
    end 
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to owner_path(@owner)
  end

  def delete
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :city, :address)
  end
end
