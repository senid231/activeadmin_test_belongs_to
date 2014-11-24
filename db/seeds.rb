#
# fill tables

RegionCountry.delete_all
RegionCity.delete_all

country_one = RegionCountry.create!(name: 'Wonderland', description: 'test')

3.times do |i|
  RegionCity.create!(name: "Wonderville_#{i}", country_id: country_one.id, description: 'test')
end


country_two = RegionCountry.create!(name: 'Amazingland', description: 'test')

5.times do |i|
  RegionCity.create!(name: "Amazingville_#{i}", country_id: country_two.id)
end