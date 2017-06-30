class AddStBaPassportPhotoToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :st_ba_passport_photo, :string
  end
end
