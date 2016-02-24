class User < ActiveRecord::Base

  has_secure_password

  mount_uploader :avatar, AvatarUploader

  has_many :rides
  has_many :seats

  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Oops, your email format is invalid." }
  validates :password, length: { in: 6..20 }, on: :create
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_presence_of :avatar
  validates_processing_of :avatar


end
