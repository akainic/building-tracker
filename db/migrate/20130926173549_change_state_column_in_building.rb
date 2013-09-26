class ChangeStateColumnInBuilding < ActiveRecord::Migration
  def up
    add_column :buildings, :state_id, :string, null: false
    remove_column :buildings, :state
  end

  def down
    remove_column :buildings, :state_id
    add_column :buildings, :state, :string
  end
end
