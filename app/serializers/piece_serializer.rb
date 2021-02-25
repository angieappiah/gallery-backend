class PieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :likes, :gallery_id

end
