# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([
	{name: "Jill"}, 
	{name: "Justin"}, 
	{name: "Rod"}, 
	{name: "Allison"}, 
	{name: "Rico"}])

artwork = Artwork.create([
	{
		title: "Mona Lisa",
		img_url: "monalisa.com",
		artist_id: 1
	},
	{
		title: "Mona Pizza",
		img_url: "moremonalisapizza.com",
		artist_id: 2
	},
	{
		title: "Hot Rod",
		img_url: "poolsaregreat.com",
		artist_id: 3
	},
	{
		title: "TeaPot",
		img_url: "418error.com",
		artist_id: 2
	},
	{
		title: "Kahoot",
		img_url: "Kahoot.io",
		artist_id: 1
	}
])

artwork_shares = ArtworkShare.create([
	{
		artwork_id: 1,
		viewer_id: 2
	},
	{
		artwork_id: 3,
		viewer_id: 3
	},
	{
		artwork_id: 4,
		viewer_id: 1
	},
	{
		artwork_id: 4,
		viewer_id: 2
	}
])
