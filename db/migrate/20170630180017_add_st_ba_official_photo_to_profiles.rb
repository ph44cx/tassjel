class AddStBaOfficialPhotoToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :st_ba_official_photo, :string
  end
end
