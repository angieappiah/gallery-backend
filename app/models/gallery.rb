class Gallery < ApplicationRecord
    has_many :pieces
    validates :style, presence: true
end
