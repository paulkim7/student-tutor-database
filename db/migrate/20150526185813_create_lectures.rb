class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.references :department, index: true

      t.timestamps null: false
    end
    add_foreign_key :lectures, :departments
  end
end
