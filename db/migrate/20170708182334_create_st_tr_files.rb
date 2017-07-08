class CreateStTrFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :st_tr_files do |t|
      t.string :st_ma_un_field
      t.string :st_tr_un_source
      t.string :st_tr_un_name
      t.string :st_tr_un_sem
      t.string :st_tr_photo1
      t.string :st_tr_photo2
      t.string :st_tr_extra_photo1
      t.string :st_tr_extra_photo2
      t.string :st_tr_un_target
      t.string :st_tr_un_name
      t.integer :user_id

      t.timestamps
    end
  end
end
