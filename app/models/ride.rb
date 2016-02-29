class Ride < ActiveRecord::Base

  belongs_to :user
  has_many :seats

  # geocoded_by :destination
  # after_validation :geocode

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
