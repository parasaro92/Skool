class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :name
      t.references :klass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
