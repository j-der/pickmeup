class RideSerializer < ActiveModel::Serializer
  attributes :id, :title, :available_seats, :origin, :destination, :user_first_name

  def user_first_name
		object.user.try(:first_name)
  end
end
