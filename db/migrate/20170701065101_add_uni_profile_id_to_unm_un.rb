class AddUniProfileIdToUnmUn < ActiveRecord::Migration[5.1]
  def change
    add_column :unm_uns, :university_profile_id, :integer
  end
end
