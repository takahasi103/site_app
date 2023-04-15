class AddColmunToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :name, :string
    add_column :customers, :address, :string
    add_column :customers, :telephone_number, :string
    add_column :customers, :is_destroy, :boolean, null: false, default: false
  end
end