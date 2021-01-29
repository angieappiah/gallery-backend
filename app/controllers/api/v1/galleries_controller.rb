class Api::V1::GalleriesController < ApplicationController
    def index
        @galleries = Gallery.all
        render json: @galleries
    end

    def create
        @gallery = Gallery.new(gallery_params)
        if @gallery.save
            render json: @gallery
        else
            render json: {error: 'unable to create'}
        end
    end
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
