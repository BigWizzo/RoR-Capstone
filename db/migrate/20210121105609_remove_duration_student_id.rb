class RemoveDurationStudentId < ActiveRecord::Migration[5.2]
  def change
    remove_column :subjects, :duration, :integer
    remove_column :subjects, :student_id, :integer
  end
end
