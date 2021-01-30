class Artist < ApplicationRecord
    has_many :pieces
    has_many :galleries
end
