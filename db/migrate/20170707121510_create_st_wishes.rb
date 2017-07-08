class CreateStWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :st_wishes do |t|
      t.string :st_country_wish
      t.string :st_city_wish
      t.string :st_wish_priority
      t.string :st_univ_wish
      t.string :st_specialty_wish
      t.integer :st_ba_file_id

      t.timestamps
    end
  end
end
