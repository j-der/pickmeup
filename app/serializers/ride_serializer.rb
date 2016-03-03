class RideSerializer < ActiveModel::Serializer
  attributes :id, :title, :available_seats, :origin, :destination, :user_first_name, :user_avatar, :details

  def user_first_name
		object.user.try(:first_name)
  end

  def user_avatar
  	object.user.try(:avatar)
  end
end
