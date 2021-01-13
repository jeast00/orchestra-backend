class Band < ApplicationRecord
    has_many :instruments

    validates :band_name, presence: true
    validates :band_name, uniqueness: true
end
