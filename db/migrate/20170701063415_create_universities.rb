class CreateUniversities < ActiveRecord::Migration[5.1]
  def change
    create_table :universities do |t|
      t.string :uni_country
      t.string :uni_city
      t.string :uni_name
      t.string :uni_sector
      t.string :uni_state_ava_fees
      t.string :uni_inst_state_ava_fees
      t.string :uni_private_med_ava_fees
      t.string :uni_private_den_ava_fees
      t.string :uni_private_eng_ava_fees
      t.string :uni_private_lit_ava_fees
      t.string :uni_inst_private_fees
      t.string :uni_institution_number
      t.string :uni_institutions_name
      t.string :uni_institution_speciality
      t.integer :university_profile_id

      t.timestamps
    end
  end
end
