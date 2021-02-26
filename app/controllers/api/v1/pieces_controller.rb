class Api::V1::PiecesController < ApplicationController
    before_action :set_gallery
    before_action :set_piece
    def index
        @piecies = @gallery.pieces.all
        render json: @piecies
    end

    def show
        @piece = Piece.find(params[:id]) 
        render json: @piece
    end

    def create
        @piece = @gallery.pieces.new(piece_params)
         @piece.save
        render json: @gallery
    end

    def edit
    end

    def update
        @piece = Api::V1::Pieces.find_by_id(params[:id])
        @piece.update
     end


    def destroy
        @piece = Piece.find(params["id"])
        @gallery = Gallery.find(@piece.gallery_id)
       if @piece.destroy
        render json: @gallery
       else
        render json:{error: 'cannot delete this piece'}
       end
    end

    private

    def set_gallery
        @gallery = Gallery.find_by(id:params[:gallery_id])
    end

    def set_piece
        @piece = Piece.find(params[:id])
    end

   def piece_params
    params.require(:piece).permit(:id, :name, :description, :likes, :gallery_id)
   end

end
