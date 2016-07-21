class Ride < ActiveRecord::Base

  belongs_to :user
  has_many :seats

  geocoded_by :destination, :latitude  => :destination_lat, :longitude => :destination_lng
  after_validation :geocode, if: ->(ride){ ride.destination.present? and ride.destination_changed? }

  # validates :origin_latitude,
  #   presence: true,
  #   numericality: true

  # validates :origin_longitude,
  #   presence: true,
  #   numericality: true

  # validates :destination_latitude,
  #   presence: true,
  #   numericality: true

  # validates :destination_longitude,
  #   presence: true,
  #   numericality: true

end
