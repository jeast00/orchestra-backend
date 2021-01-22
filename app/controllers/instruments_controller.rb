class InstrumentsController < ApplicationController

    def index 
        render json: Instrument.all.map { |instrument| InstrumentSerializer.new(instrument) }
    end

    def create
        instrument = Instrument.new(instrument_params)

        if instrument.save
            render json: InstrumentSerializer.new(instrument)
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
