class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :subject_name
      t.integer :marks
      t.integer :total
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
