class RemoveStudentIdFromClockings < ActiveRecord::Migration[5.2]
  def change
    remove_column :clockings, :student_id, :integer
  end
end
