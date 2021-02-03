class Gallery < ApplicationRecord
    has_many :pieces
    #belongs_to :artist
    validates :style, presence: true
end
