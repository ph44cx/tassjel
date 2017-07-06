class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :uni_institution_number
      t.string :uni_institution_name
      t.string :uni_institution_speciality
      t.references :university

      t.timestamps
    end
  end
end
