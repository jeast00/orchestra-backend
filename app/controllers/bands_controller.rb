class BandsController < ApplicationController

    def index
        # byebug
        render json: Band.all.map { |band| BandSerializer.new(band) }
    end

    def show
        # byebug
        band = Band.find(params[:id])
        render json: band
    end

    def create
        # byebug
        band = Band.new(band_params)

        if band.save
            render json: BandSerializer.new(band)
        end
    end

    def update
        band = Band.find(params[:id])

        if band.update(band_params)
            render json: band
        end

    end

    def destroy
        band = Band.find(params[:id])
        band.destroy
    end

    private

    def band_params
        params.require(:band).permit(:band_name)
    end

    
end
