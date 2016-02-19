class Seat < ActiveRecord::Base

  belongs_to :ride
  belongs_to :user

end
