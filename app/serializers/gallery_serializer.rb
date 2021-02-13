class GallerySerializer < ActiveModel::Serializer
  attributes :id, :style
  has_many :pieces
end
