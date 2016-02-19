class User < ActiveRecord::Base

  has_many :rides
  has_many :seats

end
