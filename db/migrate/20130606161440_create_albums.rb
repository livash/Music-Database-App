class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_name
      t.integer :band_id
      t.date :album_release_date

      t.timestamps
    end
  end
end
