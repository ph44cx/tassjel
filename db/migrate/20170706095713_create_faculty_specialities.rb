class CreateFacultySpecialities < ActiveRecord::Migration[5.1]
  def change
    create_table :faculty_specialities do |t|
      t.string :speciality
      t.references :faculty_name

      t.timestamps
    end
  end
end
