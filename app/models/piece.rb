class Piece < ApplicationRecord
    belongs_to :gallery
    belongs_to :artist
end
