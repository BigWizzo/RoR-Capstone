class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.integer :duration
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
