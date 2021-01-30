class AddArtistIdToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :artist_id, :string
  end
end
