class ArtworkStuff < ActiveRecord::Migration[7.0]
  def change
    change_column :artworks, :artist_id, :bigint, null: false, unique: true
  end
end
