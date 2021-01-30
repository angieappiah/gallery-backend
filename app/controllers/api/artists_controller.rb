class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        render json: @artists
    end

    def create
        @artist = Artist.create(artist_params)
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
