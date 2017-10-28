class CreateSomeProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :some_products do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.boolean :state
      t.string :image

      t.timestamps
    end
  end
end
