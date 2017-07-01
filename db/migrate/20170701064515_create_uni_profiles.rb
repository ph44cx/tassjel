class CreateUniProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :uni_profiles do |t|
      t.string :uni_logo
      t.string :uni_description
      t.json :uni_galaries
      t.string :uni_log_rank
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
