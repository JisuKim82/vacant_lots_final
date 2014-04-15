
data_array = File.read("db/data.txt").split(/\n/).map{|x| x.split(/,/)}

#data_array contents:
#[0]address
#[1]borough,
#[2]bbl,
#[3]block,
#[4]lot,
#[5]zipcode,
#[6]agency/owner name,
#[7]area (sq ft),
#[8]area (acres),
#[9]is vacant,
#[10]actual use,
#[11]group has access,
#[12]accessible,
#[13]longitude,
#[14]latitude

data_array.each do |arr|

  address=arr[0]
  borough=arr[1]
  bbl=arr[2]
  block=arr[3]
  lot=arr[4]
  zipcode=arr[5]
  agency=arr[6]
  area1=arr[7]
  area2=arr[8]
  vacant=arr[9]
  actual_use=arr[10]
  group_access=arr[11]
  accessible=arr[12]
  longitude=arr[13]
  latitude=arr[14]
  
  Lot.create(address: address, borough: borough, bbl: bbl, block: block, lot: lot, zipcode: zipcode,
    agency: agency, area_sqft: area1, area_acres: area2, is_vacant: vacant, actual_use: actual_use, 
    group_has_access: group_access, accessible: accessible, longitude: longitude, latitude: latitude)
end
