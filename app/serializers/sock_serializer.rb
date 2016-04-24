class SockSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :latitude, :longitude

  def id
    'aec64058-0429-4740-a661-3aba95ca2a7d'
  end

  def latitude
    object.latitude.to_f
  end

  def longitude
    object.longitude.to_f
  end
end
