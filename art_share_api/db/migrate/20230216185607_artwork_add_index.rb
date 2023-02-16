class ArtworkAddIndex < ActiveRecord::Migration[7.0]
  def change
    rename_column :artworks, :artist_id_id, :artist_id
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
