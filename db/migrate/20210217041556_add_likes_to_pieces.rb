class AddLikesToPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :likes, :integer
  end
end
