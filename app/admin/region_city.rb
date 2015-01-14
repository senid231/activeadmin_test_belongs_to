ActiveAdmin.register RegionCity, as: 'City' do
  permit_params :name, :description, :country_id

  menu false
  belongs_to :country, parent_class: RegionCountry
  navigation_menu :default

  filter :id_eq

  controller do
    defaults collection_name: :region_cities
  end

end
