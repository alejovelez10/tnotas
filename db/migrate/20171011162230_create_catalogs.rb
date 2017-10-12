class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :state

      t.timestamps
    end
  end
end
