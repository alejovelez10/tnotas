class AddNuevoToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :nuevo, :boolean
  end
end
