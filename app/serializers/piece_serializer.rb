class PieceSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :likes, :gallery_id
  # def featured_image
  #   if object.featured_image.attached?
  #     {
  #       url: rails_blob_url(object.featured_image)
  #     }
  #   end
  # end
end
