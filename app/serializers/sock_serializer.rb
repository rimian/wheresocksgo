class SockSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :latitude, :longitude

  def latitude
    object.latitude.to_f
  end

  def longitude
    object.longitude.to_f
  end
end
