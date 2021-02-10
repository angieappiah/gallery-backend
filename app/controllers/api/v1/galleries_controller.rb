class Api::V1::GalleriesController < ApplicationController
   
    def index
        @galleries = Gallery.all
        render json: @galleries
    end

    def create
        #binding.pry
        @gallery = Gallery.new(gallery_params)
        @gallery.save
        render json: @gallery      
    end
   

    def show
        @gallery = Gallery.find(params[:id])
        render json: @gallery
    end

    def destroy
        @gallery = Gallery.find(params[:id])
        @gallery.destroy
    end

    private

   def gallery_params
    params.require(:gallery).permit(:style)
   end

end
