class CreateRegionCities < ActiveRecord::Migration
  def change
    create_table :region_cities do |t|
      t.string :name
      t.integer :country_id
      t.text :description

      t.timestamps
    end
  end
end
