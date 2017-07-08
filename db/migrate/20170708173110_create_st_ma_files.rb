class CreateStMaFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :st_ma_files do |t|
      t.string :st_ma_cer_source
      t.string :st_ma_cer_field
      t.string :st_ma_cer_marks
      t.string :st_ma_cer_year
      t.string :st_ma_passport_photo
      t.string :st_ma_offical_photo
      t.string :st_ma_extra_photo1
      t.string :st_ma_extra_photo2
      t.integer :user_id

      t.timestamps
    end
  end
end
