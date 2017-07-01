class AddUniProfileIdToUnmUn < ActiveRecord::Migration[5.1]
  def change
    add_column :unm_uns, :uni_profile_id, :integer
  end
end
