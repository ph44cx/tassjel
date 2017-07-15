class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body
      t.integer :article_id
      t.integer :showcase_id

      t.timestamps
    end
  end
end
