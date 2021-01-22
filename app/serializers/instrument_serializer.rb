class InstrumentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :instrument_name, :band_id
end
