class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties do |t|
      t.integer :uni_faculties_number
      t.string :uni_faculties_name
      t.string :uni_faculties_speciality
      t.references :university

      t.timestamps
    end
  end
end
