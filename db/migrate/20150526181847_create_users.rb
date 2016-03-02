class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps null: false
    end

    create_table :lectures do |t|
      t.string :name
      t.references :department, index: true
      t.timestamps null: false
    end

    create_table :lectures_users, id: false do |t|
      t.belongs_to :lecture, index: true
      t.belongs_to :user, index: true
    end
  end
end
