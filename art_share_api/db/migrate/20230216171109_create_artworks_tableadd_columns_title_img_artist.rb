class CreateArtworksTableaddColumnsTitleImgArtist < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
		t.string :title, null: false, index: true
		t.string :img_url, null: false, unique: true
		t.references :artist_id, foreign_key: {to_table: :users}
		

      t.timestamps
    end
   
  end
end
