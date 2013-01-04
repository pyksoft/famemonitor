class FillDb
DataDump.find_each do |data|
searchText = data.dump
name = /(?<=Name:)(.*?)(?=<\/p>)/m.match(searchText) #name
aka = /(?<=AKA:)(.*?)(?=<\/p>)/m.match(searchText) #AKA
dob = /(?<=Born:)(.*?)(?=<\/p>)/m.match(searchText) # dob
birth_place = /(?<=Birthplace:)(.*?)(?=<\/p>)/m.match(searchText) # birthplace
gender = /(?<=Gender:)(.*?)(?=<\/p>)/m.match(searchText) # Gender
race =  /(?<=Race:)(.*?)(?=<\/p>)/m.match(searchText) # Race
orientation = /(?<=Orientation:)(.*?)(?=<\/p>)/m.match(searchText) # sexual orientation
occupation =  /(?<=Occupation:)(.*?)(?=<\/p>)/m.match(searchText) # occupation
political_affiliation = /(?<=Affiliation:)(.*?)(?=<\/p>)/m.match(searchText) # political affiliation
nationality = /(?<=Nationality:)(.*?)(?=<\/p>)/m.match(searchText) # nationality
description = /(?<=Description:)(.*?)(?=<\/p>)/m.match(searchText) # known for    
    begin
    Celebrity.create!(name: name[0].strip, aka: aka[0].strip, dob: dob[0], birth_place: birth_place[0].strip, gender: gender[0].strip, race: race[0].strip, orientation: orientation[0].strip, occupation: occupation[0].strip, political_affiliation: political_affiliation[0].strip, nationality: nationality[0].strip, description: description[0].strip)
    p name[0]
  rescue
    p "could not read record"
  end
  end
end







# t.string   "name"
# t.string   "aka"
# t.date     "dob"
# t.string   "birth_place"
# t.string   "gender"
# t.string   "race"
# t.string   "orientation"
# t.string   "occupation"
# t.string   "political_affiliation"
# t.string   "nationality"
# t.text     "description"