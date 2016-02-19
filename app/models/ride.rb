class Ride < ActiveRecord::Base

  belongs_to :user
  has_many :seats

  validates :origin_latitude,
    presence: true,
    numericality: { only_integer: true }

  validates :origin_longitude,
    presence: true,
    numericality: { only_integer: true }

  validates :destination_latitude,
    presence: true,
    numericality: { only_integer: true }

  validates :destination_longitude,
    presence: true,
    numericality: { only_integer: true }

end
