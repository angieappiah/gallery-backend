class Piece < ApplicationRecord
    belongs_to :gallery
    # has_one_attached :featured_image

end
