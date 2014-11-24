ActiveAdmin.register RegionCountry do
  permit_params :name, :description


  filter :id_eq

  index do
    id_column
    column :name
    column :description
  end

  show do |item|
    attributes_table do
      row :id
      row :name
      row :description
      row :cities do
        link_to 'Cities', admin_region_country_region_cities_path(item)
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :description
    end
    f.actions
  end

end
