class GallerySerializer < ActiveModel::Serializer
  attributes :id, :style, :artist_id
  has_many :pieces
end
