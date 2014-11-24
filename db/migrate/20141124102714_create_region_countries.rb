class CreateRegionCountries < ActiveRecord::Migration
  def change
    create_table :region_countries do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
