class Api::V1::ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        render json: @artists
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
