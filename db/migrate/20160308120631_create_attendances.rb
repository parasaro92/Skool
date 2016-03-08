class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.boolean :attendance
      t.date :date
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
