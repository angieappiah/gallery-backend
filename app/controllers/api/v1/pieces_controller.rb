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
        if @piece.save
            @piece.image.purge
            @piece.image.attach(params[:piece][:image])
        render json: @piece
        else
            render json: {error: 'unable to create'}
     
        end
    end

    # def delete
    #     @piece.destroy
    # end

    private

    def set_gallery
        @gallery = Gallery.find(params[:gallery_id])

    end

   def piece_params
    params.require(:piece).permit(:name, :description, :gallery_id, :image)
   end

end
