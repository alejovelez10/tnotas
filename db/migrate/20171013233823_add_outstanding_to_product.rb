class AddOutstandingToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :outstanding, :boolean
  end
end
