class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.integer :price
      t.references :user, index: true
      t.references :lecture, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
