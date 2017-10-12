class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :state
      t.integer :price
      t.boolean :show_index
      t.integer :user_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
