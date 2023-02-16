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
validates :title, uniqueness: { scope: :author_id, message: "author has work by this title already"}

	belongs_to :artist, 
		class_name: :user, 
		foreign_key: :artist_id

		
end
