class CreateUniProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :university_profiles do |t|
      t.string :uni_logo
      t.string :uni_cover_photo
      t.string :uni_description
      t.string :uni_galaries
      t.string :uni_loc_rank
      t.string :uni_int_rank
      t.date :uni_founded_date
      t.string :uni_url
      t.string :uni_email
      t.string :uni_phone1
      t.string :uni_phone2
      t.string :uni_fax
      t.string :uni_address

      t.timestamps
    end
  end
end
