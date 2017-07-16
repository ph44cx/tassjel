class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subtitle
      t.string :blog_image
      t.string :body
      t.string :tags
      t.string :share

      t.timestamps
    end
  end
end
