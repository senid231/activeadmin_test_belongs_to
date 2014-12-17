ActiveAdmin.register RegionCountry, as: 'Country' do
  permit_params :name, :description


  filter :id_eq

  sidebar 'Links', only: [:show] do
    ul do
      li do
        link_to 'Cities', admin_country_cities_path(country_id: resource.id)
      end
    end
  end

end
