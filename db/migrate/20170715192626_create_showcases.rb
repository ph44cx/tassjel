class CreateShowcases < ActiveRecord::Migration[5.1]
  def change
    create_table :showcases do |t|
      t.string :title
      t.string :story_image
      t.string :subtitle
      t.string :body
      t.string :share

      t.timestamps
    end
  end
end
