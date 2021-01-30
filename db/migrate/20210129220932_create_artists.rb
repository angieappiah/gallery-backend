class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :username
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
