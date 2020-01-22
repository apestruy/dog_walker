class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @dogs = Dog.all
    @walkers = Walker.all 
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.create!(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @dogs = Dog.all
    @walkers = Walker.all 
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def delete
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:walker_id, :dog_id)
  end 
end
