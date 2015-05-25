class WelcomeController < ApplicationController
  def index
    @reservations = Reservation.order(:starttime)
  end

  def about
  end
end
