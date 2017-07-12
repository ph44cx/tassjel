class CreateStBaFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :st_ba_files do |t|
      t.string :st_ba_cer_source
      t.string :st_ba_cer_marks
      t.string :st_ba_cer_year
      t.boolean :st_ba_cer_extra
      t.string :st_ba_cer_extra_cert
      t.boolean :st_ba_cer_lang
      t.string :st_ba_cer_photo
      t.string :st_ba_cer_photo_transcript
      t.string :st_ba_cer_extra_photo1
      t.string :st_ba_cer_extra_photo2
      t.string :st_ba_cer_extra_photo3
      t.string :st_ba_cer_extra_photo4
      t.integer :user_id

      t.timestamps
    end
  end
end
