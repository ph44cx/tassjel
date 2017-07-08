class AddStMaFileIdToStWishes < ActiveRecord::Migration[5.1]
  def change
    add_column :st_wishes, :st_ma_file_id, :integer
  end
end
