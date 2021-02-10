class Piece < ApplicationRecord
    belongs_to :gallery
   #belongs_to :artist
    # has_one_attached :featured_image

end
