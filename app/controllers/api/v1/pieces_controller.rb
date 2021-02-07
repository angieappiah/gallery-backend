class Api::V1::PiecesController < ApplicationController
    before_action :set_gallery
    def index
        @piecies = @gallery.pieces
        render json: @piecies
    end

    def show
        #@piecie = @gallery.piece.find(params[:id])
        @piece = Piece.find(params[:id]) 
        render json: @piece
    end

    def create
        @piece = @gallery.pieces.new(piece_params)
         @piece.save
        render json: @gallery
    end

    def delete
        @piece = Piece.find(params[:id])
        gallery = Gallery.find(piece.gallery_id)
        @piece.destroy
    end

    private

    def set_gallery
        @gallery = Gallery.find(params[:gallery_id])

    end

   def piece_params
    params.require(:piece).permit(:name, :description, :gallery_id, :featured_image)
   end

end
