# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    
	has_many :artworks,
		class_name: :Artwork, 
		foreign_key: :artist_id
    
	has_many :artwork_shares,
		primary_key: :id,
		foreign_key: :viewer_id,
		class_name: :ArtworkShare

	has_many :shared_artworks,
		through: :artwork_shares,
		source: :artwork
end
