class Property < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :street_address, presence: true
  validates :age, presence: true
  has_many :nearest_stations
end
