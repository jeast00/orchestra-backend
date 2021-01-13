class BandsController < ApplicationController

    def index
        # byebug
        render json: Band.all
    end
    
end
