class RegionCity < ActiveRecord::Base

  belongs_to :country, class_name: RegionCountry, foreign_key: :country_id

  validates :name, presence: true
  validates :country, presence: true
end
