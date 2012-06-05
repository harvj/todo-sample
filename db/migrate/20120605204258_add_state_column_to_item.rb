class AddStateColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :state, :string
  end
end
