class ChangeSubjectIdToInternalAndExternal < ActiveRecord::Migration[5.2]
  def change
    remove_column :clockings, :subject_id
    add_reference :clockings, :internal, index: true
    add_reference :clockings, :external, index: true
  end
end
