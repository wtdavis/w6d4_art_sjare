class ArtworkAddUniqueConstraint < ActiveRecord::Migration[7.0]
  def change
    add_index :artworks, :img_url, unique: true
    add_index :artworks, :artist_id, unique: true
  end
end
