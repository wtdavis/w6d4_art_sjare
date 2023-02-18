class ArtworksController < ApplicationController
    #let's go!
    def index
		if params[:user_id]
			render json: Artwork.joins("users ON artworks.artist_id = users.id").where(artist_id: {id: params[:id]}).select("artworks.*")
		else
        render json: Artwork.all
		end
    end

	def create
		@artwork = Artwork.new(artwork_params)
		if @artwork.save
			render json: @artwork
		else 
			render json: @artwork.errors.full_messages, status: :unprocessable_entity
		end
	end

	def artwork_params
		params.require(:artwork).permit(:name)
	end

	def show
		@artwork = Artwork.find(params[:id])
		render json: @artwork
	end

	def update
		@artwork = Artwork.find(params[:id])
		#if params[:user][:name]
		#	@user[:name] = params[:user][:name]
		#end
		#if params[:user][:email] 
		#	@user[:email] = params[:user][:email]
		#end
		params[:artwork].each do |key, value| 
			@artwork[key] = value
		end
		@artwork.save
		render json: @artwork
	end

	def destroy
		@artwork = Artwork.find(params[:id])
		if @artwork.destroy
			render json: "Hulk Smash Artwork"
		else
			@artwork.errors.full_messages 
		end
	end

	##must check for unique title/author_id combo

	
end