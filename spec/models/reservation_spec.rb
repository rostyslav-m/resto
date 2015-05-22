require 'rails_helper'

describe Reservation do
  it "Reservation with different orders time should be valid" do
  	table = Table.new
    reservation1 = Reservation.new( { starttime: "2015-05-21 13:30:00", endtime: "2015-05-21 15:00:00", table_id: 1 } )
    reservation2 = Reservation.new( { starttime: "2015-05-21 16:00:00", endtime: "2015-05-21 18:00:00", table_id: 1 } )
    reservation2.valid? == true
  end

  it "Reservation with time overlap should not be valid" do
  	table = Table.new
    reservation3 = Reservation.new( { starttime: "2015-05-21 13:30:00", endtime: "2015-05-21 15:00:00", table_id: 1 } )
    reservation4 = Reservation.new( { starttime: "2015-05-21 13:00:00", endtime: "2015-05-21 16:00:00", table_id: 1 } )
    reservation4.valid? == false
  end

end