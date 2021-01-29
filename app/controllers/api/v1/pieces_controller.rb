class Api::V1::PiecesController < ApplicationController
    before_action :set_gallery
    def index
        
        render json: @piecies
    end

    def create

    end

    def show
       
        render json: @piece
    end

    def delete
        
        @piece.destroy
    end

    private

    def set_gallery
        
    end

   def piece_params
    params.require(:piece).permit(:name, :description, :gallery_id, :url)
   end

end
