class AddAncestryToAccesses < ActiveRecord::Migration[5.0]
  def change
    add_column :accesses, :ancestry, :string
    add_index :accesses, :ancestry
  end
end
