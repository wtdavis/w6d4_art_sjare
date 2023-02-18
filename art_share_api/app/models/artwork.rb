# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  img_url    :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
validates :title, uniqueness: { scope: :artist_id, message: "artist has work by this title already"}

	belongs_to :artist, 
		class_name: :User, 
		foreign_key: :artist_id,
		primary_key: :id

	has_many :artwork_shares,
		primary_key: :id,
		class_name: :ArtworkShare,
		foreign_key: :artwork_id

	has_many :shared_viewers,
		through: :artwork_shares,
		source: :viewer
	
end
