class CreateArtworksTableaddColumnsTitleImgArtist < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork do |t|
		t.string :title, null: false
		t.string :img_url, null: false
		t.references :artist_id, foreign_key: {to_table: :artists}
		

      t.timestamps
    end
  end
end
