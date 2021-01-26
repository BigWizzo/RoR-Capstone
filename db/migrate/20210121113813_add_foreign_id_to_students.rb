class AddForeignIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :student
  end
end
