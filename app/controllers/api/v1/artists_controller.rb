class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        render json: @artists
    end

    def create
        @artist = Artist.new(artist_params)
        if@artist.save
            render json: @artist
        else
            render json: {error: 'unable to create'}
        end
    end

    def show
        @artist = Artist.find(params[:id])
        render json: @artist
    end


    private

   def artist_params
    params.require(:artist).permit(:username, :email, :location)
   end
end
