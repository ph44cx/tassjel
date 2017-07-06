# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FacultyName.create(name: "Medicine Faculty")
FacultyName.create(name: "Engineering Faculty")
FacultyName.create(name: "Law Faculty")
FacultyName.create(name: "Literature Faculty")
  
FacultySpeciality.create(speciality: "Dentist", faculty_name_id: FacultyName.find_by(name: "Medicine Faculty").id)
FacultySpeciality.create(speciality: "Cardiology", faculty_name_id: FacultyName.find_by(name: "Medicine Faculty").id)
FacultySpeciality.create(speciality: "Pathology", faculty_name_id: FacultyName.find_by(name: "Medicine Faculty").id)
FacultySpeciality.create(speciality: "Infectious disease", faculty_name_id: FacultyName.find_by(name: "Medicine Faculty").id)


FacultySpeciality.create(speciality: "Computer", faculty_name_id: FacultyName.find_by(name: "Engineering Faculty").id)
FacultySpeciality.create(speciality: "Bio Medical", faculty_name_id: FacultyName.find_by(name: "Engineering Faculty").id)
FacultySpeciality.create(speciality: "Information Technology", faculty_name_id: FacultyName.find_by(name: "Engineering Faculty").id)
FacultySpeciality.create(speciality: "Electrical Technology", faculty_name_id: FacultyName.find_by(name: "Engineering Faculty").id)
FacultySpeciality.create(speciality: "Civil Technology", faculty_name_id: FacultyName.find_by(name: "Engineering Faculty").id)


FacultySpeciality.create(speciality: "Economics", faculty_name_id: FacultyName.find_by(name: "Law Faculty").id)
FacultySpeciality.create(speciality: "Employment Discrimination", faculty_name_id: FacultyName.find_by(name: "Law Faculty").id)
FacultySpeciality.create(speciality: "Criminal Defense", faculty_name_id: FacultyName.find_by(name: "Law Faculty").id)
FacultySpeciality.create(speciality: "Civil Litigation", faculty_name_id: FacultyName.find_by(name: "Law Faculty").id)


FacultySpeciality.create(speciality: "Employment Discrimination", faculty_name_id: FacultyName.find_by(name: "Literature Faculty").id)
FacultySpeciality.create(speciality: "Medieval Resources", faculty_name_id: FacultyName.find_by(name: "Literature Faculty").id)

Country.create(name: "Turkey")
Country.create(name: "Ukraine")
Country.create(name: "Malaysia")
Country.create(name: "Cyprus")
Country.create(name: "Canada")
Country.create(name: "Russia")
Country.create(name: "UK")
Country.create(name: "Germany")

City.create(name: "Istanbul", country_id: Country.find_by(name: "Turkey").id)
City.create(name: "Ankara", country_id: Country.find_by(name: "Turkey").id)
City.create(name: "Izmir", country_id: Country.find_by(name: "Turkey").id)
City.create(name: "Bursa", country_id: Country.find_by(name: "Turkey").id)

City.create(name: "Kharkiv", country_id: Country.find_by(name: "Ukraine").id)
City.create(name: "Dnipro", country_id: Country.find_by(name: "Ukraine").id)
City.create(name: "Odesa", country_id: Country.find_by(name: "Ukraine").id)
City.create(name: "Donetsk", country_id: Country.find_by(name: "Ukraine").id)

City.create(name: "Alor Setar", country_id: Country.find_by(name: "Malaysia").id)
City.create(name: "George Town", country_id: Country.find_by(name: "Malaysia").id)
City.create(name: "Johor Bahru", country_id: Country.find_by(name: "Malaysia").id)
City.create(name: "Kota Kinabalu", country_id: Country.find_by(name: "Malaysia").id)

City.create(name: "Nicosia", country_id: Country.find_by(name: "Cyprus").id)
City.create(name: "Limassol", country_id: Country.find_by(name: "Cyprus").id)
City.create(name: "Larnaka", country_id: Country.find_by(name: "Cyprus").id)
City.create(name: "Famagusta", country_id: Country.find_by(name: "Cyprus").id)

City.create(name: "Ottawa", country_id: Country.find_by(name: "Canada").id)
City.create(name: "Quebec City", country_id: Country.find_by(name: "Canada").id)
City.create(name: "Red Deer", country_id: Country.find_by(name: "Canada").id)
City.create(name: "Regina", country_id: Country.find_by(name: "Canada").id)

City.create(name: "Moscow", country_id: Country.find_by(name: "Russia").id)
City.create(name: "Saint Petersburg", country_id: Country.find_by(name: "Russia").id)
City.create(name: "Novosibirsk", country_id: Country.find_by(name: "Russia").id)
City.create(name: "Yekaterinburg", country_id: Country.find_by(name: "Russia").id)

City.create(name: "London", country_id: Country.find_by(name: "UK").id)
City.create(name: "Birmingham", country_id: Country.find_by(name: "UK").id)
City.create(name: "Glasgow", country_id: Country.find_by(name: "UK").id)
City.create(name: "Liverpool", country_id: Country.find_by(name: "UK").id)

City.create(name: "Berlin", country_id: Country.find_by(name: "Germany").id)
City.create(name: "Hamburg", country_id: Country.find_by(name: "Germany").id)
City.create(name: "Munich", country_id: Country.find_by(name: "Germany").id)
City.create(name: "Cologne", country_id: Country.find_by(name: "Germany").id)