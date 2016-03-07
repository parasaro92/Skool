class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :fathers_name
      t.integer :gender
      t.date :dob
      t.string :phone
      t.text :address
      t.references :standard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
