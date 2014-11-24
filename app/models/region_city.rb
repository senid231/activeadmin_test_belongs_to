class RegionCity < ActiveRecord::Base

  belongs_to :country, class_name: RegionCountry

  validates :name, presence: true
  validates :country, presence: true
end
