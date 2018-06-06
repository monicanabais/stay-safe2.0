class ChangeTypeForKindInHazards < ActiveRecord::Migration[5.2]
  def change
    rename_column :hazards, :type, :kind
  end
end
