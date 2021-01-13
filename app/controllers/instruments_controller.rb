class InstrumentsController < ApplicationController

    def index 
        if params[:band_id] && band = Band.find(params[:band_id])
            instruments = band.instruments
            render json: instruments
        else
            render json: Instrument.all
        end
    end

    def create
        instrument = Instrument.new(instrument_params)

        if instrument.save
            render json: instrument
        end

    end

    def update
        instrument = Instrument.find(params[:id])

        if instrument.update(instrument_params)
            render json: instrument
        end
    
    end

    def destroy
        instrument = Instrument.find(params[:id])
        instrument.destroy
    end

    private

    def instrument_params
        params.require(:instrument).permit(:instrument_name, :band_id)
    end

end
