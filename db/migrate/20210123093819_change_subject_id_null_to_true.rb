class ChangeSubjectIdNullToTrue < ActiveRecord::Migration[5.2]
  def change
    change_column :clockings, :subject_id, :integer, :null => true
  end
end
