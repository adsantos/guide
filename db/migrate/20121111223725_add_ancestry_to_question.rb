class AddAncestryToQuestion < ActiveRecord::Migration
  def up
    add_column :questions, :ancestry, :string
    add_index :questions, :ancestry
  end

  def down
    remove_column :questions, :ancestry, :string
    remove_index :questions, :ancestry
  end
end
