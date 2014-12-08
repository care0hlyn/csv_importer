class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist 
      t.string :album
      t.integer :release_year
      t.integer :rating

      t.timestamps
    end
  end
end
