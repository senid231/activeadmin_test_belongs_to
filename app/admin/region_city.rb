ActiveAdmin.register RegionCity, as: 'City' do
  permit_params :name, :description, :country_id

  menu false
  belongs_to :country, parent_class: RegionCountry
  navigation_menu :default



  filter :id_eq
  filter :country_id, as: :select, collection: proc{ RegionCountry.all }

  sidebar :country, if: proc{ assigns[:country].present? }, priority: 1 do
    attributes_table_for assigns[:country] do
      row :id do
        auto_link(assigns[:country], assigns[:country].id)
      end
      row :name
    end
  end

  index do
    id_column
    column :country
    column :name
    column :description
  end

  show do |item|
    attributes_table do
      row :id
      row :name
      row :description
      row :country do
        auto_link(item.country)
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      #f.input :country, collection: RegionCountry
      f.input :description
    end
    f.actions
  end

end
