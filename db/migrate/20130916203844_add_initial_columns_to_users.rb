class AddInitialColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, index: true
    add_column :users, :last_name, :string, index: true
    add_reference :users, :global_role, index: true
  end
end
