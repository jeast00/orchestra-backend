class BandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :band_name, :instruments
end
