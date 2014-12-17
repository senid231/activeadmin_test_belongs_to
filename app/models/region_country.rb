class RegionCountry < ActiveRecord::Base
  validates :name, presence: true

  has_many :region_cities, class_name: RegionCity, foreign_key: :country_id
end
