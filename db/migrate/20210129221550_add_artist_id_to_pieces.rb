class AddArtistIdToPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :artist_id, :string
  end
end
