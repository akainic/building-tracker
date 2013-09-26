class AddOwnerColumnToOwner < ActiveRecord::Migration
  def up
    add_column :owners, :owner, :string
  end

  def down
    remove_column :owners, :owner
  end
end
