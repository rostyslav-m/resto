class ReservationsController < ApplicationController

  before_filter :find_reservation, only: [:show, :edit, :update, :destroy]

  def create
    @table = Table.find(params[:table_id])
    @reservation = @table.reservations.create(reservation_params)
    redirect_to table_path(@table)
  end

#  def destroy
#    @reservation = @table.reservation.find(params[:id])
#    @reservation.destroy
#    redirect_to table_path(@product)
#  end

  private

    def reservation_params
      params.require(:reservation).permit(:person, :starttime, :endtime)
    end

#    def find_reservation   
#      @reservation = Reservation.find(params[:reservation_id])
#    end

end
