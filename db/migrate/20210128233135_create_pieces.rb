class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :description
      t.integer :gallery_id
      t.string :url

      t.timestamps
    end
  end
end
