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
    
end
