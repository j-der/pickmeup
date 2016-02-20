class User < ActiveRecord::Base

  has_many :rides
  has_many :seats

  # validates :email, presence: :true
  # validates :first_name, presence: :true
  # validates :last_name, presence: :true
  # validates :driver, presence: :true

end
