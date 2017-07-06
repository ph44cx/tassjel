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