class CreateStPhdFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :st_phd_files do |t|
      t.string :st_maba_cer_source
      t.string :st_maba_cer_field
      t.string :st_maba_cer_marks
      t.string :st_maba_cer_year
      t.string :st_maphd_cer_source
      t.string :st_maphd_cer_field
      t.string :st_maphd_cer_marks
      t.string :st_maphd_cer_year
      t.integer :user_id

      t.timestamps
    end
  end
end
