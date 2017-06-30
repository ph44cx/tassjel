class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :st_ba_name
      t.string :st_ba_surname
      t.string :st_ba_father
      t.string :st_ba_mother
      t.string :st_ba_cellphone
      t.string :st_ba_passport
      t.string :st_ba_nationality
      t.string :st_ba_country
      t.integer :user_id
      t.timestamps
    end
  end
end
