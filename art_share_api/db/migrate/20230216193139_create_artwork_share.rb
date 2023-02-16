class CreateArtworkShare < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares do |t|
		t.references :artwork, null: false
		t.references :viewer, null: false
		t.timestamps
	end
		
	add_foreign_key :artwork_shares, :artworks, column: :artwork_id
	add_foreign_key :artwork_shares, :users, column: :viewer_id
   
  end
end
