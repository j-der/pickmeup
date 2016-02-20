class Ride < ActiveRecord::Base

  belongs_to :user
  has_many :seats

  validates :origin_latitude,
    presence:,  numericality: true

  validates :origin_longitude,
    presence:,  numericality: true

  validates :destination_latitude,
    presence:,  numericality: true

  validates :destination_longitude,
    presence:,  numericality: true

end
