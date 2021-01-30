class Api::V1::GalleriesController < ApplicationController
   
    def index
        @galleries = Gallery.all
        render json: @galleries
    end

    def create
        @gallery= @gallery.new(galary_params)
        render json: @gallery
    end

    def show
        @gallery = Gallery.find(params[:id])
        render json: @gallery
    end

    def delete
        @gallery = Gallery.find(params[:id])
        @gallery.destroy
    end

    private

   def gallery_params
    params.require(:gallery).permit(:style)
   end

end
