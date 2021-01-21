class CreateClockings < ActiveRecord::Migration[5.2]
  def change
    create_table :clockings do |t|
      t.string :topic
      t.string :details
      t.integer :duration

      t.timestamps
    end

    add_reference :clockings, :student
    add_reference :clockings, :subject
  end
end
