class Api::V1::PiecesController < ApplicationController
    before_action :set_gallery
    def index
        @piecies = Piece.all
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

#    def update
#         params[:featured_image]
#         @piece.featured_image.attach(params[:featured_image])
#         url= url_for(@piece.featured_image)
#         if @piece.update(url: url)
#             render json: @piece, status: :ok
#         end
#    end


    def destroy
        @piece = Piece.find(params["id"])
        @gallery = Gallery.find(@piece.gallery_id)
        @piece.destroy
        render json: @gallery
    end

    private

    def set_gallery
        @gallery = Gallery.find(params[:gallery_id])

    end

   def piece_params
    params.require(:piece).permit(:name, :description, :gallery_id)
   end

end
