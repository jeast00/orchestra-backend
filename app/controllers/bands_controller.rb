class BandsController < ApplicationController

    def index
        # byebug
        render json: Band.all
    end

    def show
        # byebug
        band = Band.find(params[:id])
        render json: band
    end
    
end
