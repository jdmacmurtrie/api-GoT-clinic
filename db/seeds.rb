Region.destroy_all
House.destroy_all


dorne = HTTParty.get('https://anapioficeandfire.com/api/houses?region=Dorne&pageSize=100')
north = HTTParty.get('https://anapioficeandfire.com/api/houses?region=The North&pageSize=100')
vale = HTTParty.get('https://anapioficeandfire.com/api/houses?region=The Vale&pageSize=100')
riverlands = HTTParty.get('https://anapioficeandfire.com/api/houses?region=The Riverlands&pageSize=100')
reach= HTTParty.get('https://anapioficeandfire.com/api/houses?region=The Reach&pageSize=100')
stormlands = HTTParty.get('https://anapioficeandfire.com/api/houses?region=The Stormlands&pageSize=100')
islands = HTTParty.get('https://anapioficeandfire.com/api/houses?region=Iron Islands&pageSize=100')

regions = [dorne, north, vale, riverlands, reach, stormlands, islands]

regions.each do |region|
  if Region.find_by_name(region.first['region']).nil?
    Region.create(name: region.first['region'])
  end
  region.each do |house|
    House.create(name: house['name'], sigil: house['coatOfArms'], words: house['words'], region: Region.find_by_name(house['region']))
  end
end

Region.find_by_name("Dorne").update_attributes({ latitude: 30.0444, longitude: 31.2357 })
Region.find_by_name("The Vale").update_attributes({ latitude: 30.1140, longitude: 118.1698 })
Region.find_by_name("The North").update_attributes({ latitude: 60.4720, longitude: 8.4689 })
Region.find_by_name("The Riverlands").update_attributes({ latitude: 32.3547, longitude: -89.3985 })
Region.find_by_name("The Reach").update_attributes({ latitude: 41.9028, longitude: 12.4964 })
Region.find_by_name("The Stormlands").update_attributes({ latitude: -30.5595, longitude: 22.9375 })
Region.find_by_name("Iron Islands").update_attributes({ latitude: 51.5074, longitude: -0.1278 })
















# dorne = egypt
# vale = china mountains
# north = norway
# riverlands = mississippi
# reach = italy
# stormlands = south africa
# islands = england
