class AddStudentIdToClockings < ActiveRecord::Migration[5.2]
  def change
    add_reference :clockings, :student
  end
end
