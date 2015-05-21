class ReservationsController < ApplicationController

  def create
    @table = Table.find(params[:table_id])
    @reservation = @table.reservations.create(reservation_params)
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to table_path(@table), notice: 'Reservation was successfully created.' }
      else
        format.html  { redirect_to table_path(@table), notice: 'Reservation was NOT created. Please check the time of reservation!' }
      end
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:person, :starttime, :endtime)
    end

end
