class ChangeInternalAndExternalBackToSubjectId < ActiveRecord::Migration[5.2]
  def change
    remove_column :clockings, :internal_id, :integer
    remove_column :clockings, :external_id, :integer
    add_reference :clockings, :subject, index: true
  end
end
