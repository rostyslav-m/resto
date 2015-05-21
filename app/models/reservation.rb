class Reservation < ActiveRecord::Base
  belongs_to :table
  validates :starttime, :endtime, :overlap => {:scope => "table_id"}

end
